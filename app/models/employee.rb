class Employee < ApplicationRecord  
  has_many :users
  self.inheritance_column = nil
end
