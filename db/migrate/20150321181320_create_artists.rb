class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :graph_id
      t.string :ref_id
      t.string :decade
      t.string :gender
      t.string :country_of_origin
      t.string :main_genre

      t.timestamps null: false
    end
  end
end
