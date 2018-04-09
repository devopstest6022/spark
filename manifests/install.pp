class spark::install(
  $spark_version  = $::spark::spark_version,
  $spark_downlaod = $::spark::spark_downlaod,
) {
#Download the Apache Spark
  exec { 'spark-download':
    command => $spark_downlaod,
    path    => ['/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/'],
    cwd     => '/opt',
    creates => "/opt/${spark_version}.tgz",
    user    => 'root',
  }

#Extract the Apache Spark
  exec { 'spark-install':
    command => "tar -xzf ${spark_version}.tgz", 
    path    => ['/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/'],
    cwd     => '/opt',
    creates => "/opt/${spark_version}",
    user    => 'root',
  }
}


