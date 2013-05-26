require 'haml'
require 'sinatra'

get '/' do
  @resume = "active"
  @title = 'Resume | Szu Han Chang'
  @canonical = 'http://www.szuhanchang.com/'
  haml :resume
end

get '/projects/?' do
  @projects = "active"
  @title = 'Projects | Szu Han Chang'
  @canonical = 'http://www.szuhanchang.com/projects.html'
  haml :projects
end

get '/challenges/?' do
  @challenges = "active"
  @title = "Programming Challenges | Szu Han Chang"
  @canonical = "http://www.szuhanchang.com/challenges.html"
  haml :challenges
end

get '/challenges/:company/?' do
  @challenges = "active"
  @company = params[:company]
  @title = "#{@company} Programming Challenges | Szu Han Chang"
  @canonical = "http://www.szuhanchang.com/challenges/#{@company}.html"
  haml "challenges/#{@company}".to_sym
end

get '/coursework/?' do
  @coursework = "active"
  @title = 'Academic Coursework | Szu Han Chang'
  @canonical = 'http://www.szuhanchang.com/coursework.html'
  haml :coursework
end

get '/bucs/:course/?' do
  @coursework = "active"
  @title = "#{params[:course].upcase} Coursework | Szu Han Chang"
end
