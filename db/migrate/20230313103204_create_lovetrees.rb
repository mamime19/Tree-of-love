class CreateLovetrees < ActiveRecord::Migration[7.0]
  def change
    create_table :lovetrees do |t|
      t.integer :growth
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
