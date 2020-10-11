require 'sinatra/base'
require './init.rb'

class Wordnatra < Sinatra::Base
  # ... app code here ...
  get '/' do
    erb :index
  end

  post '/' do
    redirect "word/#{params[:lemma]}"
  end

  get '/word/:lemma' do
    @word = Word.first(:lemma => params[:lemma])
    erb :word
  end

  get '/stylesheets/style.css' do
    headers 'Content-Type' => 'text/css; charset=utf-8'
    sass :style
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
