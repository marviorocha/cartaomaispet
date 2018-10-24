class CreateCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :calendars do |t|
      t.boolean :periodo
      t.date :day
      t.boolean :status
      t.timestamps
    end
  end
end
