
#Un tag peut avoir plusieurs gossips

class Tag < ApplicationRecord
  has_many :affiliations
  has_many :gossips, through: :affiliations
end
