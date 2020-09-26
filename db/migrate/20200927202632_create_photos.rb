class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :url
      t.boolean :favorite, default: false
      t.string :unsplash_id

      t.timestamps
    end
  end
end
