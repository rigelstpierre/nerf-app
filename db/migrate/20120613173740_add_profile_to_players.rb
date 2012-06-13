class AddProfileToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :profile, :text
  end
end
