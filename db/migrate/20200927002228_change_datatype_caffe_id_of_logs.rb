class ChangeDatatypeCaffeIdOfLogs < ActiveRecord::Migration[5.2]
  def change
    change_column :logs, :caffe_id, :integer
  end
end
