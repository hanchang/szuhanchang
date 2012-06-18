require 'sinatra'

get '/' do
	@title = "Professional Portfolio"
	erb :index
end

get '/resume' do
	@title = "Industry Experience"
	erb :resume
end

get '/projects' do
	@title = "Personal Projects"
	erb :projects
end

get '/coursework' do
	@title = "Academic Coursework"
	erb :coursework
end

get '/mozilla' do
	erb :mozilla
end
