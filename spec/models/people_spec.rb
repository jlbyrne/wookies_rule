require 'rails_helper'

RSpec.describe Person, type: :model do
  example_data = '{"id":5,"birth_year":"19BBY","eye_color":"brown","gender":"female","height":"150","homeworld":"https://swapi.dev/api/planets/2/","mass":"49","name":"Leia Organa","skin_color":"light","created":"2014-12-10T15:20:09.791Z","edited":"2014-12-20T21:17:50.315Z","url":"https://swapi.dev/api/people/5/","created_at":"2022-04-13T07:12:37.359Z","updated_at":"2022-04-13T07:12:37.359Z","planet_id":null,"swapi_id":null,"films":["https://swapi.dev/api/films/1/","https://swapi.dev/api/films/2/","https://swapi.dev/api/films/3/","https://swapi.dev/api/films/6/"],"hair_color":"brown","species":[],"vehicles":["https://swapi.dev/api/vehicles/30/"],"starships":[]}'

  it 'successfully saves data recieved from the swapi' do
    person = Person.new(JSON.parse(example_data)).save
    expect(person).to eq(true)
  end
end
