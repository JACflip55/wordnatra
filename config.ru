require 'rubygems'
require 'sinatra'

set :views, File.join(File.dirname(__FILE__),'views')
set :run, false
set :env, :production

require './wordnatra'
run Wordnatra
