class AddUserToPetshops < ActiveRecord::Migration[5.2]
  def change
    add_reference :petshops, :user, foreign_key: true
  end
end
