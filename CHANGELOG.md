# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.3] - 2019-03-18
### Added
- Add basedirmode and installdirmode params to allow flexibility on directory permissions

## [1.1.2] - 2018-10-19
### Added
- Introduce pdk as Puppet module build

### Changed
- Introducing new parameter to manage tomcat package installation [#6]
- Drop Puppet 4 support

## [1.1.1] - 2018-02-06
### Changed
- Exclude proxy-related client properties when value is empty [#3]

## [0.2.1] - 2017-02-15
### Changed
- Change scope of log file name parameter so test pass in Puppet 4.4

## [0.2.0] - 2017-02-09
### Changed
- Use `puppet-archive` to unpack WAR file
- Improve logging configuration -- log to stdout and to a file
- Configurable logging levels

## 0.1.0 - 2017-02-14
### Added
- Initial release

[#3]: https://github.com/shinesolutions/puppet-simianarmy/issues/3
[#6]: https://github.com/shinesolutions/puppet-simianarmy/issues/6

[1.1.3]: https://github.com/shinesolutions/puppet-simianarmy/compare/1.1.2...1.1.3
[1.1.2]: https://github.com/shinesolutions/puppet-simianarmy/compare/1.1.1...1.1.2
[1.1.1]: https://github.com/shinesolutions/puppet-simianarmy/compare/0.2.1...1.1.1
[0.2.1]: https://github.com/shinesolutions/puppet-simianarmy/compare/0.2.0...0.2.1
[0.2.0]: https://github.com/shinesolutions/puppet-simianarmy/compare/0.1.0...0.2.0
