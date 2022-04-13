class Starship < ApplicationRecord
  has_many :pilots, through: :people_starships
  has_and_belongs_to_many :films
end
