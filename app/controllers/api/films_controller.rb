class Api::FilmsController < Api::ApiController

  def index
    @films = Film.all
    
    if @films.empty?
      @films = fetch_all('films')
      save_all_to_database(@films, Person)
    else
      @films = { results: @films}
    end
    render :json => @films
  end

  def show
    @film = Film.find_by_url(BASE_ENDPOINT + 'films/' + params[:id] + '/')
    
    unless @film
      @film = fetch_by_id('films', params[:id])
      Film.find_or_create_by(JSON.parse(@film))
    end

    render :json => @film
  end
end
