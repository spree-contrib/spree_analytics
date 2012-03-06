# Spree Analytics

**Spree Analytics were integrated into Spree in v1.0, you only need this extension if you are using an older version of Spree**

Spree Extension for robust analytics tailored for ecommerce merchants.

Provides a transparent view into your store performance so that you can make better-informed decisions to increase 
your revenues. Tracks metrics that are relevant and actionable for store managers, not web masters. Key information 
like trending products, revenue per customer, etc., can be easily compiled because of the deep integration with Spree

## Installation
1. add spree_analytics to your gemfile

```ruby
gem 'spree_analytics', :git => "git@github.com:spree/spree_analytics.git"
```

2. create an initializer file in config/initializers/spree_analytics.rb

```ruby
SpreeAnalytics.app_id = <APP_ID>
SpreeAnalytics.site_id = <SITE_ID>
SpreeAnalytics.token = "<TOKEN>"
```

## Testing

*Note: the spec/dummy/config/routes.rb file gets created with an
incorrect engine name. It should be SpreeAnalytics::Engine.*

Be sure to add the rspec-rails gem to your Gemfile and then create a dummy test app for the specs to run against.

    $ bundle exec rake test_app
    $ bundle exec rake spec

Copyright (c) 2011 Spree Commerce
