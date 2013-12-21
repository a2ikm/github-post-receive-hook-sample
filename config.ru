require "bundler/setup"
Bundler.require(:default)

$stdout.sync = true

require_relative "app"
run App
