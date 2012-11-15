resolvers += Classpaths.typesafeResolver

resolvers += Resolver.url("heikoseeberger", new URL("http://hseeberger.github.com/releases"))(Resolver.ivyStylePatterns)

resolvers += Resolver.url("scalasbt", new URL("http://scalasbt.artifactoryonline.com/scalasbt/sbt-plugin-releases"))(Resolver.ivyStylePatterns)

resolvers += "jgit-repo" at "http://download.eclipse.org/jgit/maven"

addSbtPlugin("com.typesafe.sbt" % "sbt-git" % "0.5.0")

addSbtPlugin("com.typesafe.sbteclipse" % "sbteclipse-plugin" % "2.1.0")

addSbtPlugin("name.heikoseeberger.sbt.groll" % "sbt-groll" % "1.4.0")

addSbtPlugin("com.typesafe.sbt" % "sbt-scalariform" % "1.0.0")
