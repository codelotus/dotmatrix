resolvers += Classpaths.typesafeResolver

resolvers += Resolver.url("heikoseeberger", new URL("http://hseeberger.github.com/releases"))(Resolver.ivyStylePatterns)

resolvers += Resolver.url("scalasbt", new URL("http://scalasbt.artifactoryonline.com/scalasbt/sbt-plugin-releases"))(Resolver.ivyStylePatterns)

resolvers += "jgit-repo" at "http://download.eclipse.org/jgit/maven"

addSbtPlugin("com.jsuereth" % "sbt-git-plugin" % "0.4")

addSbtPlugin("com.typesafe.sbteclipse" % "sbteclipse-plugin" % "2.0.0")

addSbtPlugin("name.heikoseeberger.groll" % "groll" % "1.2.0")

addSbtPlugin("com.typesafe.sbtscalariform" % "sbtscalariform" % "0.3.1")
