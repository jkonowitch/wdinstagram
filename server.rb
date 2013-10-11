require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_record'
require_relative 'config/environments'
require_relative 'models/entry'

# Root
get '/' do
  erb :home
end

#Index
get '/entries' do
  @entries = Entry.all
  erb :entries
end

#New
get '/entries/new' do
  erb :new
end

#Create
post '/entries/create' do
  entry = Entry.new(params[:entry])
  entry.save
  redirect '/entries'
end

#Show
get '/entries/:entry_id' do
  @entry = Entry.find(params[:entry_id])
  erb :entry
end