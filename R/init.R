spark_dependencies <- function(spark_version, scala_version, ...) {
  sparklyr::spark_dependency(
    jars = c(
    ),
    packages = c(sprintf("neo4j-contrib:neo4j-spark-connector:2.0.0-M2", scala_version))
  )
}

.onLoad <- function(libname, pkgname) {
  sparklyr::register_extension(pkgname)
}