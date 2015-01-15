source 'https://rubygems.org'

ruby '2.2.0'

gem 'rails', '4.1.9'

# Database
gem 'mongo_mapper'
gem 'bson_ext'

# Serializer
gem 'active_model_serializers', '~> 0.8.1'

# Assets
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'bootstrap-sass', '~> 3.3.1'
gem 'autoprefixer-rails'
gem 'jquery-rails'
gem 'angularjs-rails', '~> 1.2.25'
gem 'react-rails', '~> 1.0.0.pre', github: 'reactjs/react-rails'

# View
gem 'turbolinks'

# Upload
gem 'carrierwave'
gem 'cloudinary'

gem 'puma'

# Test
group :test do
  gem 'fabrication'
  gem 'faker'
  gem 'shoulda-matchers'
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
  gem 'email_spec'
  # Pretty printed test output
  gem 'turn', '~> 0.8.3', :require => false
  gem "codeclimate-test-reporter", require: nil
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0.0'
  gem 'guard-rspec'
  gem 'capybara'
  gem 'selenium-webdriver'
end

group :development do
  gem 'spring'
  gem 'pry-rails'
  gem 'awesome_print'
  gem 'quiet_assets'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request', '0.2.0'
  gem 'lol_dba'
  gem 'fake_sqs'
end
