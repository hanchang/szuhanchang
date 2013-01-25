require 'sinatra'

get '/' do
  @resume = "active"
  @title = 'Szu Han Chang - Resume'
  @canonical = 'http://www.szuhanchang.com/'
  haml :resume
end

get '/projects' do
  @projects = "active"
  @title = 'Szu Han Chang - Projects'
  @canonical = 'http://www.szuhanchang.com/projects.html'
  haml :projects
end

get '/coursework' do
  @coursework = "active"
  @title = 'Szu Han Chang - Academic Coursework'
  @canonical = 'http://www.szuhanchang.com/coursework.html'
  haml :coursework
end
