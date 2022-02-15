
#Une ville a plusieurs users

class City < ApplicationRecord
  has_many :users
end
