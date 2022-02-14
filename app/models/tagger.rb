class Tagger < ApplicationRecord

    has_many : tags

    belongs_to :gossip
    #belongs_to :tag


end
