# @summary
#   Write properties for a specific Autoscaling group (ASG) to the
#   `chaos.properties` file.
#
# @param path
#   The path to the application.properties file on disk. Defaults to the
#   `chaos.properties` managed by the `simianarmy::chaos_properties` class.
#
# @param enabled
#   Boolean to control whether this ASG is enabled.
#
# @param probability
#   This is the probability of termination per day. See the following link for
#   more details:
#     https://github.com/Netflix/SimianArmy/wiki/Chaos-Settings#simianarmychaosasgprobability
#
# @param max_terminations_per_day
#   This setting allows you to set a value of maximum terminations per calendar
#   day (24 hours) for a specific ASG.
#
# @param owner_email
#   Set the destination email that the termination notifications will be sent
#   to for a specific ASG's instances. Also sets
#   `simianarmy.chaos.ASG.${title}.notification.enabled` to true.
#
# @example
#   simianarmy::chaos_properties::asg { <asg_name>:
#     enabled                  => true,
#     probability              => 0.5,
#     max_terminations_per_day => 1.0,
#     owner_email              => 'owner@domain.com',
#   }
#
# @author James Sinclair <james.sinclair@shinesolutions.com>
#
# Copyright © 2017 Shine Solutions Group, unless otherwise noted.
#
define simianarmy::chaos_properties::asg (
  $path = $::simianarmy::chaos_properties::path,

  $enabled                  = false,
  $probability              = 1.0,
  $max_terminations_per_day = 1.0,
  $owner_email              = '',
) {

  $line_prefix = "simianarmy.chaos.ASG.${title}"

  file_line { "${title}.enabled":
    line  => "${line_prefix}.enabled = ${enabled}",
    match => "${line_prefix}.enabled",
  }

  if $enabled {
    file_line {
      "${title}.probability":
        line  => "${line_prefix}.probability = ${probability}",
        match => "${line_prefix}.probability";
      "${title}.maxTerminationsPerDay":
        line  => "${line_prefix}.maxTerminationsPerDay = ${max_terminations_per_day}",
        match => "${line_prefix}.maxTerminationsPerDay";
    }

    if $owner_email != '' {
      file_line {
        "${title}.notification.enabled":
          line  => "${line_prefix}.notification.enabled = true",
          match => "${line_prefix}.notification.enabled";
        "${title}.ownerEmail":
          line  => "${line_prefix}.ownerEmail = ${owner_email}",
          match => "${line_prefix}.ownerEmail";
      }
    }
  }
}
