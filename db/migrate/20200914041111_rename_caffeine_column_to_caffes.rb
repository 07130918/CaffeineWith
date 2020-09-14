class RenameCaffeineColumnToCaffes < ActiveRecord::Migration[5.2]
  def change
    rename_column :caffes, :caffeine, :caffeine_mg
  end
end
