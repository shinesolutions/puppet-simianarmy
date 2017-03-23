# @summary
#   Write the `application.properties` file.
#
#  This is an internal class that isn't normally used. You can change values
#  for it's parameters using Hiera.
#
# @param path
#   The path to the application.properties file on disk. Required.
#
# @param owner
#   The user that should own the application.properties file. This user is *not*
#   created by this module and should be managed elsewhere. Required.
#
# @param group
#   The group that should own the application.properties file. This group is
#   *not* created by this module and should be managed elsewhere. Required.
#
# @param mode
#   The mode of the application.properties file. Passed to the `file` resource.
#
# @param log_file_name
#   The name for the daily rotating log file. Default is taken from the parent
#   class' `service_name` parameter.
#
# @param stdout_threshold
#   Logging threshold for the console logger. Default: WARN
#
# @param daily_rolling_threshold
#   Logging threshold for the daily rotating logger. Default: INFO
#
# @author James Sinclair <james.sinclair@shinesolutions.com>
#
# Copyright © 2017 Shine Solutions Group, unless otherwise noted.
#
class simianarmy::log4j_properties (
  $path,
  $owner,
  $group,
  $mode,
  $log_file_name,

  $stdout_threshold = 'WARN',
  $daily_rolling_threshold = 'INFO',
) {
  file { $path:
    ensure  => file,
    owner   => $owner,
    group   => $group,
    mode    => $mode,
    content => template('simianarmy/log4j_properties.erb'),
  }
}
