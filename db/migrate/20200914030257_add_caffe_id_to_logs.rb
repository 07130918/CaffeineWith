class AddCaffeIdToLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :logs, :caffe_id, :string
  end
end
