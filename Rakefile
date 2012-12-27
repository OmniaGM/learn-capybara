#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'
require 'rdoc/task'

RdocTutorial::Application.load_tasks
RDoc::Task.new(:rdoc => "rdoc", :clobber_rdoc => "rdoc:clean",
               :rerdoc => "rdoc:force") do |rdoc|
	rdoc.rdoc_dir = 'doc'
  	rdoc.title = "Learning Capybara"
  	rdoc.main = "README.rdoc"
  	rdoc.rdoc_files.include("README.rdoc")
  	
  	rdoc.options << "--all" 
end
