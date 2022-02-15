
#Un User appartient à une ville et peut avoir plusieurs gossips

class User < ApplicationRecord
  belongs_to :city
  has_many :gossips
end
