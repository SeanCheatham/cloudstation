package cloudstation.operator

import cats.effect.{ContextShift, ExitCode, IO, IOApp}
import cats.syntax.all._
import freya.Configuration.{ConfigMapConfig, CrdConfig}
import freya.json.circe._
import freya.yaml.circe._
import freya.{K8sNamespace, Operator}
import io.circe.generic.auto._
import io.fabric8.kubernetes.client.DefaultKubernetesClient

class CloudstationOperator extends IOApp {
  implicit val cs: ContextShift[IO] = contextShift

  override def run(args: List[String]): IO[ExitCode] = {
    val client = IO(new DefaultKubernetesClient())
    val config = CrdConfig(K8sNamespace.AllNamespaces, prefix = "cloudstation.operator")

    val crdOperator =
      Operator
        .ofCrd[IO, CloudStationCRD, Status](config, client, helper => new CloudStationCRDController[IO](helper))
        .run

    val configMapOperator =
      Operator
        .ofConfigMap[IO, CloudStationConfigMap](
          ConfigMapConfig(K8sNamespace.AllNamespaces, prefix = "cloudstation.operator"),
          client)(helper => new CloudStationConfigMapController[IO](helper)
        )
        .run

    (crdOperator, configMapOperator)
      .parMapN { (_, _) => ExitCode.Success }
  }
}
