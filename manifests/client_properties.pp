# @summary
#   Write the `client.properties` file.
#
#  This class writes the `client.properties` file for the Netflix Chaos Monkey.
#  It is auto-generated and should not be modified by hand.  Documentation for
#  each of the properties can be found in the example `client.properties` from
#  which it is generated. (see below)
#
#  _Note:_ This is an internal class that shouldn't be used directly. It is
#  included by the `simianarmy` class. You can change values for it's
#  parameters using Hiera.
#
# @see https://github.com/Netflix/SimianArmy/blob/master/src/main/resources/client.properties
#   The example `client.properties` file.
#
# @param path
#   The path to the client.properties file on disk. Required.
#
# @param owner
#   The user that should own the client.properties file. This user is *not*
#   created by this module and should be managed elsewhere. Required.
#
# @param group
#   The group that should own the client.properties file. This group is
#   *not* created by this module and should be managed elsewhere. Required.
#
# @param mode
#   The mode of the client.properties file. Passed to the `file` resource.
#
# @param simianarmy_client_aws_account_key
#   Java property `simianarmy.client.aws.accountKey`
#
# @param simianarmy_client_aws_account_name
#   Java property `simianarmy.client.aws.accountName`
#
# @param simianarmy_client_aws_assume_role_arn
#   Java property `simianarmy.client.aws.assumeRoleArn`
#
# @param simianarmy_client_aws_proxy_host
#   Java property `simianarmy.client.aws.proxyHost`
#
# @param simianarmy_client_aws_proxy_password
#   Java property `simianarmy.client.aws.proxyPassword`
#
# @param simianarmy_client_aws_proxy_port
#   Java property `simianarmy.client.aws.proxyPort`
#
# @param simianarmy_client_aws_proxy_user
#   Java property `simianarmy.client.aws.proxyUser`
#
# @param simianarmy_client_aws_region
#   Java property `simianarmy.client.aws.region`
#
# @param simianarmy_client_aws_secret_key
#   Java property `simianarmy.client.aws.secretKey`
#
# @param simianarmy_client_chaos_class
#   Java property `simianarmy.client.chaos.class`
#
# @param simianarmy_client_context_class
#   Java property `simianarmy.client.context.class`
#
# @param simianarmy_client_recorder_class
#   Java property `simianarmy.client.recorder.class`
#
# @param simianarmy_client_vsphere_password
#   Java property `simianarmy.client.vsphere.password`
#
# @param simianarmy_client_vsphere_termination_strategy_property_name
#   Java property `simianarmy.client.vsphere.terminationStrategy.property.name`
#
# @param simianarmy_client_vsphere_termination_strategy_property_value
#   Java property `simianarmy.client.vsphere.terminationStrategy.property.value`
#
# @param simianarmy_client_vsphere_url
#   Java property `simianarmy.client.vsphere.url`
#
# @param simianarmy_client_vsphere_username
#   Java property `simianarmy.client.vsphere.username`
#
#
# Copyright © 2017-2019 Shine Solutions Group, unless otherwise noted.
#
class simianarmy::client_properties (
  String $path,
  String $owner,
  String $group,
  String $mode,

  Variant[String, Undef] $simianarmy_client_aws_account_key = undef,
  Variant[String, Undef] $simianarmy_client_aws_account_name = undef,
  Variant[String, Undef] $simianarmy_client_aws_assume_role_arn = undef,
  Variant[String, Undef] $simianarmy_client_aws_proxy_host = undef,
  Variant[String, Undef] $simianarmy_client_aws_proxy_password = undef,
  Variant[String, Undef] $simianarmy_client_aws_proxy_port = undef,
  Variant[String, Undef] $simianarmy_client_aws_proxy_user = undef,
  Variant[String, Undef] $simianarmy_client_aws_region = undef,
  Variant[String, Undef] $simianarmy_client_aws_secret_key = undef,
  Variant[String, Undef] $simianarmy_client_chaos_class = undef,
  Variant[String, Undef] $simianarmy_client_context_class = undef,
  Variant[String, Undef] $simianarmy_client_recorder_class = undef,
  Variant[String, Undef] $simianarmy_client_vsphere_password = undef,
  Variant[String, Undef] $simianarmy_client_vsphere_termination_strategy_property_name = undef,
  Variant[String, Undef] $simianarmy_client_vsphere_termination_strategy_property_value = undef,
  Variant[String, Undef] $simianarmy_client_vsphere_url = undef,
  Variant[String, Undef] $simianarmy_client_vsphere_username = undef,

) {
  file { $path:
    ensure  => file,
    owner   => $owner,
    group   => $group,
    mode    => $mode,
    content => template('simianarmy/client_properties.erb'),
  }
}
