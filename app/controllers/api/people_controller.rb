class Api::PeopleController < Api::ApiController

  # GET /people or /people.json
  def index
    @people = Person.all
    
    if @people.empty?
      @people = fetch_all('people')
      save_all_to_database(@people, Person)
    else
      @people = { results: @people}
    end

    render :json => @people
  end

  # GET /people/1 or /people/1.json
  def show
    @people = Person.find_by_url(BASE_ENDPOINT + 'people/' + params[:id] + '/')
    
    unless @people
      @people = fetch_by_id('people', params[:id])
      begin
        People.find_or_create_by(JSON.parse(@people))
      rescue ActiveRecord::StatementInvalid
      end
    end
    render :json => @people
  end
end
