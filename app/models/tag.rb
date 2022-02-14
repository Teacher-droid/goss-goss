class Tag < ApplicationRecord

    has_many :taggers
    has_many :gossips, through: :taggers

    #belongs_to :tag


end
