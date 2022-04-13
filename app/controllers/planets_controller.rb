class PlanetsController < ApplicationController

  # GET /planets or /planets.json
  def index
    @planets = Planet.all
  end

  # GET /planets/1 or /planets/1.json
  def show
  end

  private

    # Only allow a list of trusted parameters through.
    def planet_params
      params.fetch(:planet, {})
    end
end
