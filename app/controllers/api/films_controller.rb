class Api::FilmsController < Api::ApiController

  def index
    @films = Film.all
    
    if @films.empty?
      @films = fetch_all('films')
    end
    render :json => @films
  end

  def show
    @film = Film.find_by_swapi_id(params[:id])
    
    unless @film
      @film = fetch_by_id('films', params[:id])
    end

    render :json => @film
  end
end
