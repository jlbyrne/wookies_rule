class Api::SpeciesController < Api::ApiController
  def index
    @species = Species.all
    
    if @species.empty?
      @species = fetch_all('species')
      save_all_to_database(@species, Species)
    else
      @species = { results: @species}
    end
    render :json => @species
  end

  def show
    @species = Species.find_by_url(BASE_ENDPOINT + 'species/' + params[:id] + '/')
    
    unless @species
      @species = fetch_by_id('species', params[:id])
      Species.find_or_create_by(JSON.parse(@species))
    end

    render :json => @species
  end
end
