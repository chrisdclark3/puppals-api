# config/initializers/geocoder.rb
Geocoder.configure(
  # geocoding service (see below for supported options):
  :lookup => :google,

  # geocoding service request timeout, in seconds (default 3):
  :timeout => 15,

  # set default units to kilometers:
  :units => :mi,
)