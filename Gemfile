source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.5'

gem 'rails', '~> 6.1.3', '>= 6.1.3.1'
gem 'mysql2', '0.5.3'
gem 'puma', '5.5.2'
gem 'sass-rails', '6.0.0'
gem 'webpacker', '5.4.3'
gem 'turbolinks', '5.2.1'
gem 'jbuilder', '2.11.5'
gem 'bootsnap', '1.10.1', require: false
gem 'net-http'

group :development, :test do
  gem 'byebug', '11.1.3'
  gem 'pry-rails', '0.3.9'
end

group :development do
  gem 'web-console', '4.2.0'
  gem 'rack-mini-profiler', '2.3.3'
  gem 'listen', '3.7.1'
  gem 'spring', '3.1.1'
end

group :test do
  gem 'capybara', '3.36.0'
  gem 'selenium-webdriver', '4.1.0'
  gem 'webdrivers', '5.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
  gem 'pg', '1.2.3'
end

