class Vehicle < ApplicationRecord
  has_many :pilots, through: :people_vehicles
  has_and_belongs_to_many :films
end
