require 'rubygems'
require 'spork'

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However, 
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.

  # This file is copied to spec/ when you run 'rails generate rspec:install'
  ENV["RAILS_ENV"] = 'test'

  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'mocha'

  Dir[Rails.root.join("spec/{support,factories}/**/*.rb")].each {|f| require f}

  RSpec.configure do |config|
    # If you're not using ActiveRecord, or you'd prefer not to run each of your
    # examples within a transaction, remove the following line or assign false
    # instead of true.
    config.use_transactional_fixtures = true

#   config.render_views
#   config.fail_fast                        = true # --fail-fast
    config.filter_run              :focus  => true
    config.filter_run_excluding    :broken => true
    config.run_all_when_everything_filtered = true
    config.mock_with :mocha
  end
end

Spork.each_run do
  # This code will be run each time you run your specs.
end
