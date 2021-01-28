class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.references :player, null: false, foreign_key: true
      t.references :legend, null: false, foreign_key: true
      t.string :identifier
      t.float :rank
      t.float :percentile
      t.string :displayName
      t.string :displayCategory
      t.string :category
      t.float :value
      t.string :displayValue
      t.string :displayType

      t.timestamps
    end
    add_index :stats, :identifier, unique: true
  end
end
