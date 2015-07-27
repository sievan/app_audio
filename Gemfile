source "https://rubygems.org"

ruby File.read(".ruby-version").strip

gem "rails", "4.1.8"
gem "ember-rails", "~> 0.15"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "therubyracer"
gem "twitter-bootstrap-rails"
gem "coffee-rails", "~> 4.0.0"
gem "font-awesome-less"
gem "haml"
gem "jbuilder", "~> 2.0"
gem "jquery-rails"
gem "pg"
gem "sass-rails", "~> 4.0.3"
gem "turbolinks"
gem "uglifier", ">= 1.3.0"

group :production do
  gem "puma"
  gem "rails_12factor"
end

group :development do
  gem "spring"
end

