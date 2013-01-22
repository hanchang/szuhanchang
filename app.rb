require 'sinatra'

get '/' do
  @resume = "active"
  haml :resume
end

get '/projects' do
  @projects = "active"
  haml :projects
end

get '/coursework' do
  @coursework = "active"
  haml :coursework
end
