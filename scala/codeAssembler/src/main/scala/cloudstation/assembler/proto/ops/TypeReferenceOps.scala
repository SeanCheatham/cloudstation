package cloudstation.assembler.proto.ops

import cloudstation.assembler.proto.ops.implicits.asTypeReferenceHelper
import cloudstation.assembler.scala.ops.implicits.asStringHelper
import cloudstation.project.TypeReference.Reference
import cloudstation.project.{StaticType, TypeReference}

import scala.language.implicitConversions

trait TypeReferenceOps {

  implicit def asTypeReferenceHelper(typeReference: TypeReference): TypeReferenceHelper =
    new TypeReferenceHelper(typeReference)

}

class TypeReferenceHelper(val reference: TypeReference) extends AnyVal {

  def toProtoReference: String =
    reference.reference match {
      case Reference.Empty => ???
      case Reference.Static(value) =>
        value.staticType match {
          case recognized: StaticType.Recognized => ???
          case StaticType.INT32 => "int32"
          case StaticType.INT64 => "int64"
          case StaticType.FLOAT => "float"
          case StaticType.DOUBLE => "double"
          case StaticType.STRING => "string"
          case StaticType.BOOL => "bool"
          case StaticType.Unrecognized(unrecognizedValue) => ???
        }
      case Reference.Model(value) =>
        value.name.toClassName
      case Reference.List(value) =>
        s"repeated ${value.valueType.get.toProtoReference}"
      case Reference.Map(value) =>
        s"map<${value.keyType.get.toProtoReference}, ${value.valueType.get.toProtoReference}>"
    }
}
