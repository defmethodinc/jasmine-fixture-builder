[![Build Status](https://travis-ci.org/defmethodinc/jasmine-fixture-builder.svg?branch=master)](https://travis-ci.org/defmethodinc/jasmine-fixture-builder)
# Jasmine Fixture Builder

Jasmine Fixture Builder (or "JazzFix" for short) allows you to generate fixtures for your jasmine specs based on the DOM your application renders. Don't let your jasmine fixtures get stale and lie to you - use JazzFix to keep your application's DOM and jasmine specs in sync!

JazzFix leverages the fixture loading ability of [jasmine-jquery](https://github.com/velesin/jasmine-jquery) along with the clean DOM rendering that [rspec-rails](https://github.com/rspec/rspec-rails) [view specs](https://github.com/rspec/rspec-rails#view-specs) provide. JazzFix owes a debt of gratitude to the work and subsequent [experience report](http://pivotallabs.com/javascriptspecs-bind-reality/) from JB Steadman.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jasmine_fixture_builder'
```

And then execute:

    $ bundle

## Usage

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.


## Contributing

1. Fork it ( https://github.com/[my-github-username]/jasmine_fixture_builder/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
