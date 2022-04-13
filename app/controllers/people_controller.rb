class PeopleController < ApplicationController

  # GET /people or /people.json
  def index
    @people = Person.all
  end

  # GET /people/1 or /people/1.json
  def show
  end

  private

    # Only allow a list of trusted parameters through.
    def person_params
      params.fetch(:person, {})
    end
end
