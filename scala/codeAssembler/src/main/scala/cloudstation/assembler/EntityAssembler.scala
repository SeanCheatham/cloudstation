package cloudstation.assembler

import cloudstation.project.Project

trait EntityAssembler {
  def project: Project

  def version: String

  def writableProject: WritableProject
}
