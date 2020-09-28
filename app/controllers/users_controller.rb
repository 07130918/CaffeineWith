class UsersController < ApplicationController
    
    def show
        today = Log.created_today.where(user_id: current_user.id)
        @today = today.count
        c_id = today.pluck(:caffe_id)
        caffeine = c_id.map{|id| Caffe.find(id).caffeine_mg}
        @today_caffeine = caffeine.sum
        @logs = Log.where(user_id: current_user.id).order("created_at DESC")
        @cups = Log.where(user_id: current_user.id).count
    end
    
    def edit
    end
    
    def update
        current_user.update(update_params)
    end
    
    private
    
    def update_params
        params.require(:user).permit(:image, :nickname)    
    end
    
end
