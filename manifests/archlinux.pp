# Class: datadog_agent::archlinux
#
# This class contains the DataDog agent installation mechanism for Arch Linux
#

class datadog_agent::archlinux(
  Integer $agent_major_version = $datadog_agent::params::default_agent_major_version,
) inherits datadog_agent::params {
  package { 'sysstat':
    ensure  => 'latest'
  }
}
