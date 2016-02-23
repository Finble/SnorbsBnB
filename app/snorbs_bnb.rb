# this is the app main file with all routes - need app name to match app name in spec_helper (for Capybara tests)
require 'tilt/erb'  #fixes tilt autoloading error, see https://github.com/britg/sinatra-cross_origin/issues/20
require 'sinatra/base'
require_relative 'models/space'


class SnorbsBnB < Sinatra::Base
  
  get '/spaces' do
    @spaces = Space.all
    erb :'spaces/index'
  end

end