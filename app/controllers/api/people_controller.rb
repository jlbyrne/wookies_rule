class Api::PeopleController < Api::ApiController

  # GET /people or /people.json
  def index
    @people = Person.all
    
    if @people.empty?
      @people = fetch_all('people')
      save_all_to_database(@people, Person)
    end
    render :json => @people
  end

  # GET /people/1 or /people/1.json
  def show
    @people = Person.find_by_swapi_id(params[:id])
    
    unless @people
      @people = fetch_by_id('people', params[:id])
    end
    render :json => @people
  end
end
