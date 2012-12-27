Getting Started with capybara
=============================
Learning how to use [*rspec*](http://rubydoc.info/gems/rspec-rails/frames), [*capybara*](https://github.com/jnicklas/capybara) and [*webkit*](https://github.com/jnicklas/capybara#capybara-webkit) with *rails*

### 1. Creating Project
=======================

    rails new learn-capybara

  Or you can create a new project using [*rails-composer*](https://github.com/RailsApps/rails-composer).

    rails new learn-capybara -m https://raw.github.com/RailsApps/rails-composer/master/composer.rb -T -O

### 2. Rspec installation
=========================
Now Install <b><tt>Rspec</b></tt>  
    rails generate rspec:install

### 3. Setup capybara 
=====================
#### Gemfile :
   Add this in your <b><tt>Gemfile</b></tt>.

    group :test, :development do
      gem "rspec-rails"
    end

    group :test do
      gem "capybara"
    end
  
  Ok, now run <b><tt>bundle</b></tt>.


#### <tt> spec/spec_helper.rb </tt> configuration

  <b>Require capybara:</b>
  
    require 'capybara/rspec'

  <b>Capybara configration:</b>
  
    RSpec.configure do |config|
      config.include Capybara::DSL, :type => :request

### 4. Write your test
======================
* [Capybara](https://github.com/jnicklas/capybara)
* [Capybara Cheat Sheet](https://gist.github.com/428105)

### 5. Capybara-webkit
======================
#### Installation
Set <b><tt>Gemfile</b></tt> and <b><tt>spec_helper.rb</b></tt>
  
####  Gemfile
  
  Add <b><tt>capybara-webkit</b></tt> and <b><tt>database-cleaner</b></tt>
  
      gem "capybara-webkit", :group => :test
      gem 'database_cleaner', :group => :test

####  <tt> spec/spec_helper.rb </tt> configuration
  Now, set <b><tt>capybara-webkit</b></tt> config
    
####  <b>capybara-webkit configration</b>
    
   Of course, it require 'capybara/rspec' and set Capybara.javascript_driver = :webkit in your spec_helper
   
      require 'capybara/rspec'
      require 'capybara-webkit'
      Capybara.javascript_driver = :webkit
 
####  <b>DatabaseCleaner configuration</b>
    
   You need database_cleaner because database transactions aren’t compatible with rspec drivers besides Rack::Test
   
      RSpec.configure do |config|
      #... 
        config.use_transactional_fixtures = false
       config.before(:suite) do
            DatabaseCleaner.strategy = :truncation
        end
       config.before(:each) do
            DatabaseCleaner.start
        end
       config.after(:each) do
            DatabaseCleaner.clean
        end
      end
#### Using webkit
  Use <b><tt> :js => true </b></tt>.
  
    it "supports js", :js => true do
        visit '/'
        click_link "test js"
        page.should have_content("js works")
      end

### 6. Finally run Rspec
========================
Ok, finally run your test, you can use one of these commands to run *rspec*:
    
    rspec
  
If you want run it in your terminal but with show all tests documentation you can use <b><tt> format documentation </tt></b> or with shortcut <b><tt> -fd </tt></b> 

    rspec spec --format documentation
    rspec -fd

Or if you want save your test in html page you can use <b><tt>format html</tt></b>

    rspec spec --format html --out results.html
