source 'https://rubygems.org'

ruby '2.4.1'

gem 'rails', '5.1.2'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'haml'
gem 'haml-rails'
gem 'jquery-rails'
gem 'stripe'
gem 'json'
gem 'dotenv-rails'
gem 'mail_form'
gem 'jbuilder', '~> 2.5'
gem 'sitemap_generator'
gem 'fog-aws'
gem 'whenever', require: false
gem 'activerecord-session_store'

group :development, :test do
	gem 'sqlite3'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'pry'
  gem 'pry-remote'
  gem "letter_opener"
end

group :production do
  gem 'pg', '0.21.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
