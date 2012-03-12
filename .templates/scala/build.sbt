name := "project_name"

version := "0.1"

scalaVersion := "scala_version"

libraryDependencies ++= Seq(
  "org.specs2" %% "specs2" % "1.8.2" % "test"
  "org.scala-tools.testing" % "scalacheck_2.9.0" % "1.9" % "test"
)

resolvers ++= Seq("snapshots" at "http://oss.sonatype.org/content/repositories/snapshots",
                  "releases"  at "http://oss.sonatype.org/content/repositories/releases")

