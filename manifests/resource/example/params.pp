#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class etc_services::resource::example::params
#
# This class is meant to be called from etc_services::resource::example::config
# It sets variables according to platform
#
class etc_services::resource::example::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'etc_services'
      $service_name = 'etc_services'
      $config_file = '/etc/etc_services.conf'
      $config_include_dir = '/etc/etc_services/conf.d'
      $init_defaults = '/etc/default/etc_services'
    }
    'RedHat', 'Amazon': {
      $package_name = 'etc_services'
      $service_name = 'etc_services'
      $config_file = '/etc/etc_services.conf'
      $config_include_dir = '/etc/etc_services/conf.d'
      $init_defaults = '/etc/sysconfig/etc_services'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
  $myparam = 'foo'
}

