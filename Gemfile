source 'https://rubygems.org'

gem 'rails', '3.2.9'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
gem 'rake', :group => [:development, :test]
gem "rdoc", :group => [:development, :test]
gem "rspec-rails", ">= 2.11.4", :group => [:development, :test]
#gem "capybara", ">= 2.0.1", :group => :test
gem "capybara-webkit", "0.13.0", :group => :test
#You need database_cleaner because database transactions aren’t compatible with rspec drivers besides Rack::Test
gem 'launchy', :group => :test
gem 'database_cleaner', :group => :test
