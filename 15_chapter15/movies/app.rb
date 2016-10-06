require 'sinatra'
require 'movie'
require 'movie_store'
 store = MovieStore.new('movies.yml')

get('/movies')  do
 @movies = store.all
  erb :index	
end

get('/movies/new') do
	erb :new
end

get('/numbers') do
	erb :numbers
end
post('/movies/create') do
 @movie = Movie.new
 @movie.title = params['title']
 @movie.director = params['director']
 @movie.year = params['year']
 store.save(@movie)
 redirect '/movies/new'
end
get('/movies/:id') do
  id = params['id'].to_i
  @movie = store.find(id)
  erb :show
end

get('/form') do
  erb:form
end
post('/convert') do
  farenheit = params['temperature'].to_f
  celsius = (farenheit - 32) / 1.8
  format("%0.1f degrees Farenheit is %0.1f degrees Celsius.", farenheit, celsius)
end