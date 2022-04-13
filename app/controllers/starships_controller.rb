class StarshipsController < ApplicationController

  # GET /starships or /starships.json
  def index
    @starships = Starship.all
  end

  # GET /starships/1 or /starships/1.json
  def show
  end

  # GET /starships/new
  def new
    @starship = Starship.new
  end

  private
    # Only allow a list of trusted parameters through.
    def starship_params
      params.fetch(:starship, {})
    end
end
