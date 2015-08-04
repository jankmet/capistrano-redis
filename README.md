# capistrano-redis

Capistrano plugin for accessing remote Redis server

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-redis'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-redis


## Usage

Require in `Capfile`:

```ruby
require 'capistrano/redis'
```

This will add the following tasks:


```ruby
redis:info      # basic info for remote redis databases

```

### Examples:

    $ cap production redis:info
