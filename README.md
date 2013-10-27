# dotenv-contrib [![Build Status](https://secure.travis-ci.org/elskwid/dotenv-contrib.png)](https://travis-ci.org/elskwid/dotenv-contrib)

Collection of feature extensions, enhancements, other goodies for use with [Dotenv](https://github.com/bkeepers/dotenv). Dotenv loads environment variables from `.env` into `ENV`.

## Installation


Add this line to your application's Gemfile:

```ruby
gem 'dotenv-contrib', :groups => [:development, :test]
```

And then execute:

    $ bundle

Or install the gem:

    $ gem install dotenv-contrib


## Usage

## Capistrano integration

If you use `2.x.x` version:

In your `config/deploy.rb` file:

```ruby
require "dotenv/capistrano"
```

It will symlink the `.env` located in `/path/to/shared` in the new release. 

Remember to add :production group to the dotenv-rails gem in your application's Gemfile:

```ruby
gem 'dotenv-rails', :groups => [:development, :test, :production]
```

---

If you use `3.x.x` version:

In your `config/deploy.rb` file:

add .env to the list of linked files, similar to:

```ruby
set :linked_files, %w{config/database.yml .env}
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
