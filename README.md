SpreeAds
========

Ads / Banner Management for Spree Commerce.

Use the following partials in your Views:

```
<%= render 'spree/shared/ads/home_slider' %>
<%= render 'spree/shared/ads/home_sidebar_left' %>
<%= render 'spree/shared/ads/home_sidebar_right' %>
<%= render 'spree/shared/ads/all_sidebar_left' %>
<%= render 'spree/shared/ads/all_sidebar_right' %>
```

Installation
------------

Add spree_ads to your Gemfile:

```ruby
gem 'spree_ads'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_ads:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_ads/factories'
```

Copyright (c) 2013 [name of extension creator], released under the New BSD License
