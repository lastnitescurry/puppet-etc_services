#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class etc_services::resource::example
#
# This class is called from etc_services::resource::example
# It manages how the resource 'example' is configured
#
class etc_services::resource::example::config (
  # params with default value from etc_services::resource::example::params
  $myparam = $::etc_services::resource::example::params::myparam,
  # other params
  $my_other_param = "bar"
)
{
  # insert configuration resources here
}
