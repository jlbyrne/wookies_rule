class Vehicle < ApplicationRecord
  has_and_belongs_to_many :pilots, class_name "Person"
  has_and_belongs_to_many :films
end
