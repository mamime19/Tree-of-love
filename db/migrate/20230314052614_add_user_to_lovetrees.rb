class AddUserToLovetrees < ActiveRecord::Migration[7.0]
  def change
    add_reference :lovetrees, :user, null: false, foreign_key: true
  end
end
