
#La table de jointure appartient à Gossip et Tag

class Affiliation < ApplicationRecord
  belongs_to :gossip
  belongs_to :tag
end
