class Api::SpeciesController < Api::ApiController
  # GET /species or /species.json
  def index
    @species = Species.all
    
    if @species.empty?
      @species = fetch_all('species')
    end
    render :json => @species
  end

  # GET /species/1 or /species/1.json
  def show
    @species = Species.find_by_swapi_id(params[:id])
    
    unless @species
      @species = fetch_by_id('species', params[:id])
    end
    render :json => @species
  end
end
