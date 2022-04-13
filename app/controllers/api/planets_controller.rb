class Api::PlanetsController < Api::ApiController

  # GET /planets or /planets.json
  def index
    @planets = Planet.all
    
    if @planets.empty?
      @planets = fetch_all('planets')
    end
    render :json => @planets
  end

  # GET /planets/1 or /planets/1.json
  def show
    @planet = Planet.find_by_swapi_id(params[:id])
    
    unless @planet
      @planet = fetch_by_id('planets', params[:id])
    end
    render :json => @planet
  end
end
