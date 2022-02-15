
#Gossip appartient à un User et a plusieurs tags

class Gossip < ApplicationRecord
  belongs_to :user
  has_many :affiliations
  has_many :tags, through: :affiliations
end
