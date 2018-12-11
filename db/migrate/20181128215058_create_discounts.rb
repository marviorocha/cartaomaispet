class CreateDiscounts < ActiveRecord::Migration[5.2]
  def change
    create_table :discounts do |t|
      t.integer :valor
      t.references :petshop, foreign_key: true

      t.timestamps
    end
  end
end
