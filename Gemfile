source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use sqlite3 as the database for Active Record
gem 'pg'

gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Used to process images / resize
gem "paperclip", "~> 4.3"

# Needed for image uploading to Amazon S3 bucket
gem 'aws-s3', '0.6.3'
gem 'aws-sdk', '< 2.0'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

gem 'hirb'

gem 'rails_12factor'

gem 'rack-cors', :require => 'rack/cors'
# Use Unicorn as the app server
# gem 'unicorn'
gem 'puma'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
group :test, :development do
	gem 'byebug'
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'spring'
end
group :test do
  gem 'capybara'
end

ruby "2.2.0"