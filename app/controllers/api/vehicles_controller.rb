class Api::VehiclesController < ApplicationController

  # GET /vehicles or /vehicles.json
  def index
    @vehicles = Vehicle.all
  end

  # GET /vehicles/1 or /vehicles/1.json
  def show
  end

  private

    # Only allow a list of trusted parameters through.
    def vehicle_params
      params.fetch(:vehicle, {})
    end
end
