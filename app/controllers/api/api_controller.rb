require 'net/http'
require 'json'

class Api::ApiController < ApplicationController

  BASE_ENDPOINT = "https://swapi.dev/api/"

  def fetch_all name
    call_api(BASE_ENDPOINT + name)
  end

  def sanitize_result result
    result.inject({}) do |h,(k,v)|
      if v.kind_of? Array
        # insert array of swapi_ids
        h[k] = v.map { |url| URI(url).path.split('/').last } 
      elsif k == 'url'
        h['swapi_id'] = URI(v).path.split('/').last
      elsif k == 'homeworld'
        h[k] = URI(v).path.split('/').last
      end
      h
    end
  end

  # if this were a real app, this would kick off a background job
  #  
  # I think the best way to do this might be creating a custom
  # 'migration' method for each model to make sure no edge cases slip through
  # the cracks.  Or just write a migration to download and save the data for each table,
  # because the dataset is small.  I think this is the fastest way to meet the criteria
  # in the assignment, though.  
  def save_all_to_database data, model
    JSON.parse(data)['results'].each do |result|
      # sanitized_result = sanitize_result(result)
      puts "*"*100
      # p sanitized_result
      # find or create by is slow, and definitely slower than Film.import(array_of_new_films)
      # But I would be concerned about duplicates in a bulk upload like that.
      model.find_or_create_by(result)
    end
  end

  def fetch_by_id name, id
    call_api(BASE_ENDPOINT + name + '/' + id)
  end

  def call_api endpoint
    res = Net::HTTP.get_response(URI(endpoint))
    # If this were a fully featured app, there would be error handling here
    puts res.body
    res && res.body
  end
end
