class UsersController < ApplicationController
    
    def show
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
