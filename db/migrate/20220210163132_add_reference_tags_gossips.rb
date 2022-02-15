
#Ajout de gossip_id dans les tables tags
# Ajout de tag_id dans les tables gossips

class AddReferenceTagsGossips < ActiveRecord::Migration[5.2]
  def change
    add_reference :gossips, :tag, foreign_key: true
    add_reference :tags, :gossip, foreign_key: true
  end
end
