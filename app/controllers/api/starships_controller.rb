class Api::StarshipsController < Api::ApiController

  # GET /starships or /starships.json
  def index
    @starships = Starship.all
    
    if @starships.empty?
      @starships = fetch_all('starships')
    end
    render :json => @starships
  end

  # GET /starships/1 or /starships/1.json
  def show
    @starship = Starship.find_by_swapi_id(params[:id])
    
    unless @starship
      @starship = fetch_by_id('starships', params[:id])
    end
    render :json => @starship
  end
end
