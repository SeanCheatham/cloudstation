package cloudstation.operator

import io.fabric8.kubernetes.api.model.{ObjectMeta, Service, ServiceSpec}
import io.fabric8.kubernetes.client.KubernetesClient

import scala.jdk.CollectionConverters._

trait CloudStationSystemDao {
  def deployPostgresql()
}

class CloudStationSystemDaoImpl(client: KubernetesClient) extends CloudStationSystemDao {

  def deployPostgresql() =
    ???

  def currentPostgresqlService(): Option[Service] =
    client.services()
      .list().getItems.asScala
      .find(_.getMetadata.getLabels.asScala.to(LazyList).contains(("cloudstation.store.postgresql", "true")))
}

object CloudStationSystemDaoImpl {
  val PostgresqlService: Service = {
    val metadata = new ObjectMeta()
    metadata.setLabels(Map(("cloudstation.store.postgresql", "true")).asJava)

    val spec = new ServiceSpec()
    new Service(
      "",
      "",
      metadata,
      ???,
      ???
    )
  }
}
