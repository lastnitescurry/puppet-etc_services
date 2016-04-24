#
# Contributor(s) : Brian Dinneen 
#
# == Class: etc_services::hiera
#
# Create multiple /etc/services entries using create_resources function and 
# data loaded via: hiera_hash('etc_services')
# 
#
# === Parameters
# 
#
class etc_services::hiera {
  $etc_services = hiera_hash('etc_services')
  create_resources('etc_services', $etc_services)
}

# vim: tabstop=2 shiftwidth=2 softtabstop=2
