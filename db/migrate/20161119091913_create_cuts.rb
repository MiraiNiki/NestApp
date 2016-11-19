class CreateCuts < ActiveRecord::Migration[5.0]
  def change
    create_table :cuts do |t|
      t.integer :velocity, null: false
      t.integer :output, null: false
      t.boolean :success, null: false
      t.references :work, foreign_key: true

      t.timestamps
    end
  end
end
