#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class: etc_services
#
# Full description of class etc_services here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class etc_services (
  $package_name = $etc_services::params::package_name,
  $service_name = $etc_services::params::service_name,
) inherits etc_services::params {

  # validate parameters here

  class { 'etc_services::install': } ->
  class { 'etc_services::config': } ~>
  class { 'etc_services::service': } ->
  Class['etc_services']
}
