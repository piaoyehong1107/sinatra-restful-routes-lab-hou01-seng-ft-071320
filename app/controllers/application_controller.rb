class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes/new' do
    erb :new
  end

  post '/recipes' do
    @recipe=Recipe.create(params)
    erb :index
    redirect to "/recipes/#{@article.id}"
  end

  get '/recipes' do
     @recipes=Recipe.all
     erb :index
  end

  get '/recipes/:id' do
    @recipe=Recipe.find_by(id:params[:id])
    erb :show
  end

end
