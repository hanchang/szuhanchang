require 'sinatra'

get '/' do
  @resume = "active"
  @title = 'Szu Han Chang - Resume'
  @canonical = 'http://www.szuhanchang.com/'
  haml :resume
end

get '/projects/?' do
  @projects = "active"
  @title = 'Szu Han Chang - Projects'
  @canonical = 'http://www.szuhanchang.com/projects.html'
  haml :projects
end

get '/challenges/?' do
  @challenges = "active"
  @title = "Szu Han Chang - Programming Challenges"
  @canonical = "http://www.szuhanchang.com/challenges.html"
  haml :challenges
end

get '/challenges/:company/?' do
  @challenges = "active"
  @company = params[:company]
  @title = "Szu Han Chang - Programming Challenges | #{@company}"
  @canonical = "http://www.szuhanchang.com/challenges/#{@company}.html"
  haml "challenges/#{@company}".to_sym
end

get '/coursework/?' do
  @coursework = "active"
  @title = 'Szu Han Chang - Academic Coursework'
  @canonical = 'http://www.szuhanchang.com/coursework.html'
  haml :coursework
end

get '/bucs/:course/?' do
  @coursework = "active"
  @title = "Szu Han Chang - #{params[:course].upcase} Coursework"
  haml "bucs/#{params[:course]}".to_sym
end
