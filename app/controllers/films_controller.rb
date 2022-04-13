class FilmsController < ApplicationController
  # GET /films or /films.json
  def index
    @films = Film.all
  end

  # GET /films/1 or /films/1.json
  def show
  end

  private

    # Only allow a list of trusted parameters through.
    def film_params
      params.fetch(:film, {})
    end
end
