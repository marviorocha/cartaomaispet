class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.string :raca
      t.string :vacinacao
      t.boolean :sexo
      t.string :descricao
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
