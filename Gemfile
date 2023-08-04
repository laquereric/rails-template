# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.1'

gem 'pg', '~> 1.5.3'
gem 'puma', '~> 6.3.0'
gem 'rails', '7.0.6'
gem 'turbo-rails', '~> 1.4.0'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'vite_rails', '~> 3.0.15'

group :development, :test do
  gem 'dotenv-rails', '~> 2.8.1'
  gem 'pry', '~> 0.14.2'
  gem 'rspec-rails', '~> 6.0.3'
end

group :development do
  gem 'foreman', '~> 0.87.2'
  gem 'rubocop-rails', '~> 2.20.2', require: false
end
