class Api::FilmsController < Api::ApiController

  def index
    @films = Film.all
    puts @films
    
    if @films.empty?
      @films = fetch_all('films')
    end
    puts "*"*100
    puts @films
    render :json => @films
    # respond_with({test: '123'}.to_json)
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
