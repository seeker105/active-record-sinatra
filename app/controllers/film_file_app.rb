class FilmFile < Sinatra::Base
  get '/films' do
    @films = Film.all
    erb :films_index
  end

  get '/genres' do
    @genres = Genre.all
    erb :genres_index
  end

  get '/directors/:id' do
    @dirctor = Director.find(id)
  end

  post '/genres' do
    genre = Genre.new(params[:genre])

    success = genre.save

    if success
      status 200
      body "Genre Created"
    else
      status 400
      body "Name missing"
    end
  end
end
