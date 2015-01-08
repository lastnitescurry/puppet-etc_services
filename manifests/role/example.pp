#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class etc_services::role::example
# 
# This is an example "role" class. All "role" classes should inherit the base "role" class
# which in turn composes the "base" profile
# 
# Remember:
# Compose resources into "resource" classes
# Compose "resource" classes into "profile" classes
# Compose "profile" classes into "role" classes
#
class etc_services::role::example inherits ::etc_services::role {
  include '::etc_services::profile::example'
}
