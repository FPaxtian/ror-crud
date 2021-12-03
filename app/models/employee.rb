class Employee < ApplicationRecord  
  has_many :users
  #self.primary_key = :id
  self.inheritance_column = nil
end
