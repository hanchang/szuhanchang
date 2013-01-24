require 'sinatra'

get '/' do
  @resume = "active"
  @title = 'Szu Han Chang - Resume'
  haml :resume
end

get '/projects' do
  @projects = "active"
  @title = 'Szu Han Chang - Projects'
  haml :projects
end

get '/coursework' do
  @coursework = "active"
  @title = 'Szu Han Chang - Academic Coursework'
  haml :coursework
end
