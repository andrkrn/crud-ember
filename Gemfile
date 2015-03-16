source 'https://rubygems.org'

ruby '2.2.0'

gem 'rails', '4.1.9'
gem 'rails-api', '~> 0.2.0'

# Database
gem "mongoid", "~> 4.0.0"
gem 'active_model_serializers', '~> 0.8.1'

# Assets
gem 'sass-rails', '~> 5.0.1'
gem 'uglifier', '>= 1.3.0'
gem 'bootstrap-sass', '~> 3.3.1'
gem 'autoprefixer-rails'
gem 'jquery-rails'
gem 'font-awesome-sass'
gem 'ember-rails'
gem 'ember-source', '~> 1.9.1'

# View
gem 'slim'

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
  gem 'rspec-rails', '~> 3.1.0'
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

group :production do
  gem 'execjs'
  gem 'therubyracer', platforms: :ruby
end