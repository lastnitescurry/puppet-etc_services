#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class etc_services::install
#
class etc_services::install {

  package { $etc_services::package_name:
    ensure => present,
  }
}
