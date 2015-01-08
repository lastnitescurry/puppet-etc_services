#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class etc_services::resource::example
#
# This class is meant to be called from etc_services::resource::example
# It ensure the package is installed
#
class etc_services::resource::example::install {

  package { $etc_services::resource::example::params::package_name:
    ensure => present,
  }
}
