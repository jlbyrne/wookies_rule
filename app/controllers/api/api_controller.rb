require 'net/http'

class Api::ApiController < ApplicationController

  BASE_ENDPOINT = "https://swapi.dev/api/"

  def fetch_all name
    call_api(BASE_ENDPOINT + '/' + name)
  end

  # if this were a real app, this would kick off a background job
  def save_all_to_database data 
    data.results
  end

  def fetch_by_id name, id
    call_api(BASE_ENDPOINT + '/' + name + '/' + id)
  end

  def call_api endpoint
    res = Net::HTTP.get_response(URI(endpoint))
    # If this were a fully featured app, there would be error handling here
    res && res.body
  end
end
