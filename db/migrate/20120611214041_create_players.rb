class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :provider_email
      t.string :oauth_token
      t.string :oauth_secret

      t.timestamps
    end
  end
end
