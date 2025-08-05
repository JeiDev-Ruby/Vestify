ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __dir__)
env = ENV["RAILS_ENV"] || ENV["RACK_ENV"]

require "bundler/setup" # Set up gems listed in the Gemfile.

unless env == "development"
  require "bootsnap/setup"
end
