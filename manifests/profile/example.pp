#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class etc_services::profile::example
# 
# This class is a "profile" and should compose "resource" classes.
# It is called (composed) from "role" classes
#
class etc_services::profile::example {
  include ::etc_services::resource::example
}
