class CreateDiscounts < ActiveRecord::Migration[5.2]
  def change
    create_table :discounts do |t|
      t.references :discountable, polymorphic: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
