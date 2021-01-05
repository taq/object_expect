# Expect

This gem provides an `except` method based on the `Rust` method. It checks if an
object has a value different from `nil` and raises an exception if it is equal
`nil`, with a custom message.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'object_expect'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install object_expect
```

## Usage

```
require 'object_expect'

value = 1
puts value.expect('Should have a value')
=> 1

value = nil
puts value.expect('Should have a value')
=> ObjectExpect::Error raised
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/taq/object_expect.
