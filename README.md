# HashEasy

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hash_easy'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hash_easy

## Usage

# Bottomless

Imagine that you need to create a hash with some levels:

```ruby
my_hash = { }

%I(admin guest).each do |role|
  my_hash[:data][:team][:roles][role] = { }
end
```

This will result in an error:

```
NoMethodError: undefined method `[]' for nil:NilClass
```

So using HashEasy as the name say is easy to initializer a hash with multilevels, avoding the necessity to initialize or declare than first.

Here some examples:

```ruby
my_hash = Hash.new.bottomless

%I(admin guest).each do |role|
  my_hash[:data][:team][:roles][role] = { }
end
```

And the result:

```
{:data=>{:team=>{:roles=>{:admin=>{}, :guest=>{}}}}}
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/hash_easy/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
