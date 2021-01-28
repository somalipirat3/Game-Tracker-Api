class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :identifier
      t.string :username
      t.string :platform

      t.timestamps
    end
    add_index :players, :identifier, unique: true
  end
end
