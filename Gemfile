source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.1'

gem 'aws-sdk', '~> 2.3.0'
gem 'bcrypt', '~> 3.1.7'
gem 'figaro'
gem 'foundation-rails'
gem 'jquery-turbolinks'
gem 'mailgun-ruby', '~>1.1.6'
gem 'paperclip', '~> 5.0.0'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'redcarpet'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem 'webpacker'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'launchy'
end

group :test do
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'letter_opener'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
