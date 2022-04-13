class Planet < ApplicationRecord
  has_many :residents, class_name "Person"
  has_and_belongs_to_many :films
end
