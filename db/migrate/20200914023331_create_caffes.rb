class CreateCaffes < ActiveRecord::Migration[5.2]
  def change
    create_table :caffes do |t|
      t.integer :caffeine
      t.string :store
      t.string :size
      

      t.timestamps
    end
  end
end
