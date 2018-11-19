source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap'
gem 'jquery-rails'

group :development, :test do
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_bot_rails'
  gem 'pry'
  gem 'pry-byebug'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'coveralls', require: false
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


# Incluir la siguiente linea si se trabaja con Windows
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
