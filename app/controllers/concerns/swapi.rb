require 'net/http'

module Swapi
  extend ActiveSupport::Concern

  BASE_ENDPOINT = "https://swapi.dev/api/"

  def fetch_all name
    call_api(BASE_ENDPOINT + '/' + name)
  end

  def fetch_by_id name, id
    call_api(BASE_ENDPOINT + '/' + name + '/' + id)
  end

  private

  def call_api endpoint
    res = Net::HTTP.get_response(URI(endpoint))
    puts "* "*100
    puts res
    # If this were a fully featured app, there would be error handling here
    res && res.body
  end
end
