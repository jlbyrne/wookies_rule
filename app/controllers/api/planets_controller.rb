class Api::PlanetsController < Api::ApiController

  def index
    @planets = Planet.all
    
    if @planets.empty?
      @planets = fetch_all('planets')
      save_all_to_database(@planets, Planet)
    else
      @planets = { results: @planets}
    end
    render :json => @planets
  end

  def show
    @planet = Planet.find_by_url(BASE_ENDPOINT + 'planets/' + params[:id] + '/')
    
    unless @planet
      @planet = fetch_by_id('planets', params[:id])
      Planet.find_or_create_by(JSON.parse(@planet))
    end

    render :json => @planet
  end
end
