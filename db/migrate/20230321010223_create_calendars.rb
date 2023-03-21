class CreateCalendars < ActiveRecord::Migration[7.0]
  def change
    create_table :calendars do |t|
      t.integer :type
      t.date :day

      t.timestamps
    end
  end
end
