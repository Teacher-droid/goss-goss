
#Ajout de tag_id et gossip_id dans la table de jointure affiliation

class AddKeysAffiliation < ActiveRecord::Migration[5.2]
  def change
    add_reference :affiliations, :tag, foreign_key: true
    add_reference :affiliations, :gossip, foreign_key: true
  end
end
