package cloudstation.assembler.proto.ops

import cloudstation.assembler.sbtscala.ops.implicits.asStringHelper

import scala.language.implicitConversions

trait StringOps {

  implicit def asStringHelper(string: String): StringHelper =
    new StringHelper(string)

}

class StringHelper(val string: String) extends AnyVal {
  import StringHelper._

  def toVariableName: String =
    string.filter(ValidIdentifierCharacters).lowercaseFirstLetter

  def toModelName: String =
    string.filter(ValidIdentifierCharacters).uppercaseFirstLetter

  def toServiceName: String =
    toModelName + "Service"

  def lowercaseFirstLetter: String =
    (string : Seq[Char]) match {
      case head :: tail =>
        new String(Array(head)).toLowerCase ++ tail
    }

  def uppercaseFirstLetter: String =
    (string : Seq[Char]) match {
      case head :: tail =>
        new String(Array(head)).toUpperCase ++ tail
    }

  def indent: String =
    indent(1)

  def indent(depth: Int): String =
    raw"${new String(Array.fill[Char](depth * 4)(' '))}$string"

}

object StringHelper {
  final val ValidIdentifierCharacters: Set[Char] =
    Set('_') ++('a' to 'z') ++ ('A' to 'Z') ++ ('0' to '9')
}