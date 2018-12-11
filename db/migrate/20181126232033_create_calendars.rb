class CreateCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :calendars do |t|
      t.date :date
      t.timestamp :horario
      t.boolean :periodo
      t.references :petshop, foreign_key: true

      t.timestamps
    end
  end
end
