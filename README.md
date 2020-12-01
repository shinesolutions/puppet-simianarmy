[![Build Status](https://github.com/shinesolutions/puppet-simianarmy/workflows/CI/badge.svg)](https://github.com/shinesolutions/puppet-simianarmy/actions?workflow=CI)


# shinesolutions-simianarmy

## Description

A Puppet module for provisioning the Netflix
[Simian Army](https://github.com/Netflix/SimianArmy).

## Setup

### Setup Requirements

If you want to use an `S3` URL ( s3://_bucket_/_path_ ) for the war file source,
you'll need to have the AWS CLI installed and configured so `root` can run the
command below without error. This means you'll need to ensure AWS default
credentials are configured correctly. Information on how to set them up is
detailed in
[the AWS CLI docs.] (http://docs.aws.amazon.com/cli/latest/topic/config-vars.html)

    aws s3 cp <url> /tmp/jar.tmp


### Beginning with shinesolutions-simianarmy

Install the module using the `puppet` command:

    puppet module install shinesolutions-simianarmy

Or via a Puppetfile:

    mod 'shinesolutions-simianarmy'

Or uf you want to use the newest code from git:

    mod 'shinesolutions-simianarmy', :git => 'https://github.com/shinesolutions/puppet-simianarmy'

Then just include the module in your Puppet code:

    include simianarmy

## Usage

Parameters can be set with Hiera. See the defaults in `data/common.yaml` for
examples.

Most default parameters will be correct for most purposes. By default, Simian Army version 2.5.3 will be installed. If you want to use a different version you will need to overring the following vaules to point to the correct file:

    simianarmy::warfile_source: (s3|http|file)://(host|bucket)/path/to/simianarmy.war
    simianarmy::warfile_checksum_value: <sha256 hash of simianarmy.jar>

## Reference

The module's classes and their parameters are documented in the comments in
each manifest file. HTML documentation generated with `puppet strings` can be
found in the `docs/` folder -- which is published on [GitHub
Pages](https://shinesolutions.github.io/puppet-simianarmy/) for easy
reference.

