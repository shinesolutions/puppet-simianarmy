# == Class: simianarmy::client_properties
#
# Write the `application.properties` file.
#
# === Parameters
#
# [*path*]
#   The path to the application.properties file on disk. Required.
#
# [*owner*]
#   The user that should own the application.properties file. This user is *not*
#   created by this module and should be managed elsewhere. Required.
#
# [*group*]
#   The group that should own the application.properties file. This group is
#   *not* created by this module and should be managed elsewhere. Required.
#
# [*mode*]
#   The mode of the application.properties file. Passed to the `file` resource.
#
# [*simianarmy_client_aws_account_key*]
#   Java property `simianarmy.client.aws.accountKey`
#
# [*simianarmy_client_aws_account_name*]
#   Java property `simianarmy.client.aws.accountName`
#
# [*simianarmy_client_aws_assume_role_arn*]
#   Java property `simianarmy.client.aws.assumeRoleArn`
#
# [*simianarmy_client_aws_proxy_host*]
#   Java property `simianarmy.client.aws.proxyHost`
#
# [*simianarmy_client_aws_proxy_password*]
#   Java property `simianarmy.client.aws.proxyPassword`
#
# [*simianarmy_client_aws_proxy_port*]
#   Java property `simianarmy.client.aws.proxyPort`
#
# [*simianarmy_client_aws_proxy_user*]
#   Java property `simianarmy.client.aws.proxyUser`
#
# [*simianarmy_client_aws_region*]
#   Java property `simianarmy.client.aws.region`
#
# [*simianarmy_client_aws_secret_key*]
#   Java property `simianarmy.client.aws.secretKey`
#
# [*simianarmy_client_chaos_class*]
#   Java property `simianarmy.client.chaos.class`
#
# [*simianarmy_client_context_class*]
#   Java property `simianarmy.client.context.class`
#
# [*simianarmy_client_recorder_class*]
#   Java property `simianarmy.client.recorder.class`
#
# [*simianarmy_client_vsphere_password*]
#   Java property `simianarmy.client.vsphere.password`
#
# [*simianarmy_client_vsphere_termination_strategy_property_name*]
#   Java property `simianarmy.client.vsphere.terminationStrategy.property.name`
#
# [*simianarmy_client_vsphere_termination_strategy_property_value*]
#   Java property `simianarmy.client.vsphere.terminationStrategy.property.value`
#
# [*simianarmy_client_vsphere_url*]
#   Java property `simianarmy.client.vsphere.url`
#
# [*simianarmy_client_vsphere_username*]
#   Java property `simianarmy.client.vsphere.username`
#
# === Examples
#
#  This is an internal class that isn't normally used. You can change values
#  for it's parameters using Hiera.
#
# === Authors
#
# This is an auto-generated class.
#
# === Copyright
#
# Copyright © 2017 Shine Solutions Group, unless otherwise noted.
#
class simianarmy::client_properties (
  $path,
  $owner,
  $group,
  $mode,

  $simianarmy_client_aws_account_key = undef,
  $simianarmy_client_aws_account_name = undef,
  $simianarmy_client_aws_assume_role_arn = undef,
  $simianarmy_client_aws_proxy_host = undef,
  $simianarmy_client_aws_proxy_password = undef,
  $simianarmy_client_aws_proxy_port = undef,
  $simianarmy_client_aws_proxy_user = undef,
  $simianarmy_client_aws_region = undef,
  $simianarmy_client_aws_secret_key = undef,
  $simianarmy_client_chaos_class = undef,
  $simianarmy_client_context_class = undef,
  $simianarmy_client_recorder_class = undef,
  $simianarmy_client_vsphere_password = undef,
  $simianarmy_client_vsphere_termination_strategy_property_name = undef,
  $simianarmy_client_vsphere_termination_strategy_property_value = undef,
  $simianarmy_client_vsphere_url = undef,
  $simianarmy_client_vsphere_username = undef,

) {
  file { $path:
    ensure  => file,
    owner   => $owner,
    group   => $group,
    mode    => $mode,
    content => template('simianarmy/client_properties.erb'),
  }
}
