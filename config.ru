# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application

$stdout.sync = true

require 'rack/cors'
use Rack::Cors do
  allow do
    origins '*'
    resource '*',
        :methods => [:get, :post, :put, :delete, :options, :patch, :head],
        :headers => :any,
        :max_age => 6000
  end
end
