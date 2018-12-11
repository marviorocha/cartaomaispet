class CreatePetshops < ActiveRecord::Migration[5.2]
  def change
    create_table :petshops do |t|
      t.string :title
      t.string :address
      t.integer :phone
      t.integer :cep
      t.string :estado
      t.string :cidade
      t.text :descricao
      t.timestamps
    end
  end
end
