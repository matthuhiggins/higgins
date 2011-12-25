source 'http://rubygems.org'

gem 'rails', git: 'https://github.com/rails/rails.git', branch: '3-2-stable'
gem 'fb_rails'
gem 'jquery-rails'
gem 'redcarpet', require: false

group :assets do
  gem 'sass-rails', '~> 3.2.0'
  gem 'coffee-rails', '~> 3.2.0'
  gem 'uglifier'
end

group :development, :test do
  gem 'mysql2'
end

group :production do
  gem 'thin'
  gem 'pg'
end