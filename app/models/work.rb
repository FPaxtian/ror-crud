class Work < ApplicationRecord
  has_many :employees
  self.inheritance_column = nil
  
end
