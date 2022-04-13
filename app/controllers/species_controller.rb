class SpeciesController < ApplicationController

  # GET /species or /species.json
  def index
    @species = Species.all
  end

  # GET /species/1 or /species/1.json
  def show
  end

  private

    # Only allow a list of trusted parameters through.
    def species_params
      params.fetch(:species, {})
    end
end
