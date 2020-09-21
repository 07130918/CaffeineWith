class UsersController < ApplicationController
    
    def show
        @logs = Log.where(user_id: current_user.id).page(params[:page]).per(7).order("created_at DESC")
    end
    
    def edit
    end
    
    def update
    end
    
end
