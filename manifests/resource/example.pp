#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class etc_services::resource::example
#
# This class is called from etc_services::profile::*
# It creates an additional abstraction layer for composing resources
# into profiles. In the resource 'example' we use additional classes
# to separate configuration, package and services. You may not need to do this
# and put everything into example.pp, and drop example/* altogether
#
class etc_services::resource::example (
  $package_name = $etc_services::resource::example::params::package_name,
  $service_name = $etc_services::resource::example::params::service_name,
) inherits etc_services::resource::example::params {

  # validate parameters here

  class { 'etc_services::resource::example::install': } ->
  class { 'etc_services::resource::example::config': } ~>
  class { 'etc_services::resource::example::service': } ->
  Class['etc_services::resource::example']
}
