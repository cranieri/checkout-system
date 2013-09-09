# Simple checkout system

The checkout system has been implemented with special attention to following aspects:
-flexibility regarding the promotional rules

-inheritance and strategy pattern to preserve the decoupling between the checkout and the promotional rules

-each promotional rule has a priority (the constant PRIORITY) associated. The promotions will be executed in an order based on the rule priority

Please have a look at the rspec tests for a better understanding of how the app works

## Supported Ruby Versions
This library aims to support and is [tested against][travis] the following Ruby
implementations:

* Ruby 1.9.2
* Ruby 1.9.3
* Ruby 2.0.0

If something doesn't work on one of these interpreters, it's a bug.

This library may inadvertently work (or seem to work) on other Ruby
implementations, however support will only be provided for the versions listed
above.

If you would like this library to support another Ruby version, you may
volunteer to be a maintainer. Being a maintainer entails making sure all tests
run and pass on that implementation. When something breaks on your
implementation, you will be responsible for providing patches in a timely
fashion. If critical issues for a particular implementation exist at the time
of a major release, support for that Ruby version may be dropped.


## Copyright
Copyright (c) 2013 Cosimo Ranieri.
