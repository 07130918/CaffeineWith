class Log < ApplicationRecord
    belongs_to :caffe
    belongs_to :user
    
    scope :created_today, -> { where("created_at >= ?", Time.zone.now.beginning_of_day) }
    
end