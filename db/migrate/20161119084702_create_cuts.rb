class CreateCuts < ActiveRecord::Migration[5.0]
  def change
    create_table :cuts do |t|
      t.string :velocity
      t.integer :, null: false
      t.string :output
      t.integer :, null: false
      t.string :success
      t.boolean :, null: false
      t.string :work
      t.references :, foreign_key: true

      t.timestamps
    end
  end
end
