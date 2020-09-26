class Caffe < ApplicationRecord
    has_many :logs
    has_many :users, through: :logs
    # logsテーブルを通すとusers,caffesは多対多
end
