class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.string :title, null:false, limit: 10
      t.string :source 

      t.timestamps null: false
    end
  end
end
