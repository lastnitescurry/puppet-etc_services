#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class etc_services::resource::example::service
#
# This class is meant to be called from etc_services::resource::example
# It ensures the service is running
#
class etc_services::resource::example::service {

  service { $etc_services::resource::example::params::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
