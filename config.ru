# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application

$stdout.sync = true

use Rack::Cors do
  allow do
    origins '//puppals.herokuapp.com',
    resource '*',
        :methods => [:get, :post, :put, :delete, :options, :patch, :head],
        :headers => :any,
        :expose  => ['Api-Request-Served'],
        :max_age => 6000
  end
end
