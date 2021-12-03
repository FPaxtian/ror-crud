class Provider < ApplicationRecord
  #self.primary_key = :id
  has_many :users
end
