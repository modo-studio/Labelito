# Labelito

[![Build Status](https://travis-ci.org/carambalabs/Labelito.svg?branch=master)](https://travis-ci.org/carambalabs/Labelito)
[![Dependency Status](https://gemnasium.com/badges/github.com/carambalabs/Labelito.svg)](https://gemnasium.com/github.com/carambalabs/Labelito)

Labelito is a command line tool written in Ruby that automates the label creation on GitHub. It currently supports two ways of creating the labels:

- Cloning them from an existing repository.
- Reading them from a template.

**Example cloning [CocoaPods](https://cocoapods.org) labels**

![example](assets/example.gif)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'Labelito'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install Labelito

## Usage

```bash
Commands:
  labelito clone FROM_OWNER/FROM_REPO TO_OWNER/TO_REPO  # clone the labels from an existing repository
  labelito create TEMPLATE_PATH REPO_OWNER/REPO         # create labels on a repository based on a template
  labelito help [COMMAND]                               # Describe available commands or one specific command
```

You can specify the GitHub token by:

- Passing a parameter `github_token`
- Defining an environment variable `LABELITO_GITHUB_TOKEN`


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/carambalabs/Labelito. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## References

- Octokit. Ruby client: [Link](https://github.com/octokit/octokit.rb)
- rspec-mocks: [Link](http://rspec.info/documentation/3.5/rspec-mocks/)
- rspecs-expectations: [Link](http://rspec.info/documentation/3.5/rspec-expectations/)

## About

<img src="https://github.com/carambalabs/Foundation/blob/master/ASSETS/avatar_rounded.png?raw=true" width="70" />

This project is funded and maintained by [Caramba](http://caramba.io). We 💛 open source software!

Check out our other [open source projects](https://github.com/carambalabs/), read our [blog](http://blog.caramba.io) or say :wave: on twitter [@carambalabs](http://twitter.com/carambalabs).

## Contribute

Contributions are welcome :metal: We encourage developers like you to help us improve the projects we've shared with the community. Please see the [Contributing Guide](https://github.com/carambalabs/Foundation/blob/master/CONTRIBUTING.md) and the [Code of Conduct](https://github.com/carambalabs/Foundation/blob/master/CONDUCT.md).

## License

CarambaKit is available under the MIT license. See the LICENSE file for more info.


