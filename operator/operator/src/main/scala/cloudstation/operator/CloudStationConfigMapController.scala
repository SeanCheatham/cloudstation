package cloudstation.operator

import cats.effect.ConcurrentEffect
import com.typesafe.scalalogging.LazyLogging
import freya.models.{CustomResource, NewStatus}
import freya.{CmController, ConfigMapHelper}
import io.fabric8.kubernetes.api.model.ConfigMap

import scala.jdk.CollectionConverters._

class CloudStationConfigMapController[F[_]](helper: ConfigMapHelper[F, CloudStationConfigMap])(implicit f: ConcurrentEffect[F]) extends CmController[F, CloudStationConfigMap] with LazyLogging {

  override def onAdd(resource: CustomResource[CloudStationConfigMap, Unit]): F[NewStatus[Unit]] = {
    helper.currentResources().map(_.map(_.map(_.)))
    helper.client.services().list().getItems.asScala.map(_.getMetadata.getLabels.asScala)
    F.delay(logger.info(s"CloudStation ConfigMap Added.  spec=${resource.spec} metadata=${resource.metadata}"))
  }

  override def onDelete(resource: CustomResource[CloudStationConfigMap, Unit]): F[Unit] =
    F.delay(logger.info(s"CloudStation ConfigMap Deleted.  spec=${resource.spec} metadata=${resource.metadata}"))

  override def onModify(resource: CustomResource[CloudStationConfigMap, Unit]): F[NewStatus[Unit]] =
    F.delay(logger.info(s"CloudStation ConfigMap Modified.  spec=${resource.spec} metadata=${resource.metadata}"))

  override def onInit(): F[Unit] =
    F.delay(logger.info(s"init completed"))

  override def isSupported(cm: ConfigMap): Boolean =
    cm.getMetadata.getName.startsWith("cloudstation")

}

case class CloudStationConfigMap(storageType: String = "InMemory")