class Api::VehiclesController < Api::ApiController
  def index
    @vehicles = Vehicle.all
    
    if @vehicles.empty?
      @vehicles = fetch_all('vehicles')
      save_all_to_database(@vehicles, Vehicle)
    else
      @vehicles = { results: @vehicles}
    end
    render :json => @vehicles
  end

  def show
    @vehicle = Vehicle.find_by_url(BASE_ENDPOINT + 'vehicles/' + params[:id] + '/')
    
    unless @vehicle
      @vehicle = fetch_by_id('vehicles', params[:id])
      
      begin
        Vehicle.find_or_create_by(JSON.parse(@vehicle))
      rescue ActiveRecord::StatementInvalid
      end
    end

    render :json => @vehicle
  end
end
