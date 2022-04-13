class Film < ApplicationRecord
  has_and_belongs_to_many :characters, class_name "Person"
  has_and_belongs_to_many :planets
  has_and_belongs_to_many :species
  has_and_belongs_to_many :starships
  has_and_belongs_to_many :vehicles
end
