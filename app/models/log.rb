class Log < ApplicationRecord
    belongs_to :caffe
    belongs_to :user
    
    scope :created_today, -> { where("created_at >= ?", Time.zone.now.beginning_of_day) }
    # phpmyadminではcreated_atがイギリス時間になっているがコンソールから日本時間になっていることを確認
end