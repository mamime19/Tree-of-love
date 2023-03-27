class AddModeToLovetrees < ActiveRecord::Migration[7.0]
  def change
    add_column :lovetrees, :mode, :integer
  end
end
