class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :favorite_name
      t.references :petshop, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
