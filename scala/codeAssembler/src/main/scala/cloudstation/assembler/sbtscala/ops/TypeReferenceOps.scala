package cloudstation.assembler.sbtscala.ops

import cloudstation.assembler.sbtscala.ops.implicits.{asStringHelper, asTypeReferenceHelper}
import cloudstation.project.{Project, StaticType, TypeReference}

import scala.language.implicitConversions

trait TypeReferenceOps {

  implicit def asTypeReferenceHelper(typeReference: TypeReference): TypeReferenceHelper =
    new TypeReferenceHelper(typeReference)

}

object TypeReferenceOps extends TypeReferenceOps

class TypeReferenceHelper(val reference: TypeReference) extends AnyVal {
  def classPath(project: Project): String =
    reference.reference match {
      case TypeReference.Reference.Empty => ???
      case TypeReference.Reference.Static(staticType) =>
        staticType.staticType match {
          case StaticType.BOOL => "scala.Boolean"
          case StaticType.INT32 => "scala.Int"
          case StaticType.INT64 => "scala.Long"
          case StaticType.FLOAT => "scala.Float"
          case StaticType.DOUBLE => "scala.Double"
          case StaticType.STRING => "scala.String"
        }
      case TypeReference.Reference.Model(TypeReference.Model(_, _)) =>
        s"cloudstation.user.${reference.className(project)}"
      case TypeReference.Reference.List(TypeReference.List(valueType, _)) =>
        val valueTypePath = valueType.fold("Any")(_.classPath(project))
        s"Seq[$valueTypePath]"
      case TypeReference.Reference.Map(TypeReference.Map(keyType, valueType, _)) =>
        val keyTypePath = keyType.fold("Any")(_.classPath(project))
        val valueTypePath = valueType.fold("Any")(_.classPath(project))
        s"Map[$keyTypePath, $valueTypePath]"
      case _ =>
        throw new MatchError(reference)
    }

  def className(project: Project): String =
    reference.reference match {
      case TypeReference.Reference.Empty => ???
      case TypeReference.Reference.Static(staticType) =>
        staticType.staticType match {
          case StaticType.BOOL => "Boolean"
          case StaticType.INT32 => "Int"
          case StaticType.INT64 => "Long"
          case StaticType.FLOAT => "Float"
          case StaticType.DOUBLE => "Double"
          case StaticType.STRING => "String"
        }
      case TypeReference.Reference.Model(TypeReference.Model(name, _)) =>
        name.toClassName
      case TypeReference.Reference.List(TypeReference.List(valueType, _)) =>
        val valueTypeName = valueType.fold("Any")(_.className(project))
        s"Seq[$valueTypeName]"
      case TypeReference.Reference.Map(TypeReference.Map(keyType, valueType, _)) =>
        val keyTypeName = keyType.fold("Any")(_.className(project))
        val valueTypeName = valueType.fold("Any")(_.className(project))
        s"Map[$keyTypeName, $valueTypeName]"
      case _ =>
        throw new MatchError(reference)
    }
}
