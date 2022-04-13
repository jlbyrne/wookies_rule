class Api::StarshipsController < Api::ApiController

  def index
    @starships = Starship.all
    
    if @starships.empty?
      @starships = fetch_all('starships')
      save_all_to_database(@starships, Starship)
    else
      @starships = { results: @starships}
    end
    render :json => @starships
  end

  def show
    @starship = Starship.find_by_url(BASE_ENDPOINT + 'starships/' + params[:id] + '/')
    
    unless @starship
      @starship = fetch_by_id('starships', params[:id])
      Starship.find_or_create_by(JSON.parse(@starship))
    end

    render :json => @starship
  end
end
