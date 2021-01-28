class CreateLegends < ActiveRecord::Migration[6.0]
  def change
    create_table :legends do |t|
      t.string :name
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
    add_index :legends, :name, unique: true
  end
end
