import sbt._
object PluginDef extends Build {
    override def projects = Seq(root)
    lazy val root = Project("plugins", file(".")) dependsOn(growl)
    lazy val growl = uri("git://github.com/softprops/sbt-growl-plugin.git#0.1.3")
}

