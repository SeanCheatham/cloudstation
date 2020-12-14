package cloudstation.operator

import cats.effect.ConcurrentEffect
import cats.syntax.apply._
import com.typesafe.scalalogging.LazyLogging
import freya.{Controller, CrdHelper}
import freya.models.{CustomResource, NewStatus}

class CloudStationCRDController[F[_]](helper: CrdHelper[F, CloudStationCRD, Status])(implicit f: ConcurrentEffect[F]) extends Controller[F, CloudStationCRD, Status] with LazyLogging {

  override def onAdd(krb: CustomResource[CloudStationCRD, Status]): F[NewStatus[Status]] =
    F.delay(logger.info(s"new Krb added: ${krb.spec}, ${krb.metadata}")) *> F.pure(Some(Status(true))) *> F.

  override def onDelete(krb: CustomResource[CloudStationCRD, Status]): F[Unit] =
    F.delay(logger.info(s"Krb deleted: ${krb.spec}, ${krb.metadata}"))

  override def onModify(krb: CustomResource[CloudStationCRD, Status]): F[NewStatus[Status]] =
    F.delay(logger.info(s"Krb modified: ${krb.spec}, ${krb.metadata}")) *> F.pure(Some(Status(true)))

  override def onInit(): F[Unit] =
    F.delay(logger.info(s"init completed"))

}

case class CloudStationCRD()
case class Status(ready: Boolean)