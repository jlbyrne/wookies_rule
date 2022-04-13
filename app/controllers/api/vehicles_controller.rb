class Api::VehiclesController < Api::ApiController
  # GET /vehicles or /vehicles.json
  def index
    @vehicles = Vehicle.all
    
    if @vehicles.empty?
      @vehicles = fetch_all('vehicles')
    end
    render :json => @vehicles
  end

  # GET /vehicles/1 or /vehicles/1.json
  def show
    @vehicle = Vehicle.find_by_swapi_id(params[:id])
    
    unless @vehicle
      @vehicle = fetch_by_id('vehicles', params[:id])
    end
    render :json => @vehicle
  end
end
