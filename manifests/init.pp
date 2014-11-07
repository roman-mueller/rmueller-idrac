# == Class: idrac
#
# Installs dependency packages to allow querying of iDRAC status
#
# === Examples
#
#  class { 'idrac': }
#
# === Authors
#
# Roman Mueller 
#
# === Copyright
#
# Copyright 2014 Roman Mueller, unless otherwise noted.
#
class idrac {

  package { 'srvadmin-all':
    ensure => installed,
  }

}
