require './config/environment'

require 'scout_apm'
ScoutApm::Rack.install!

run Hanami.app
