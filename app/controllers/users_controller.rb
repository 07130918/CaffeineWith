class UsersController < ApplicationController
    
    def show
        @logs = Log.where(user_id: current_user.id)
        @cups = Log.where(user_id: current_user.id).count
    end
    
    def edit
    end
    
    def update
    end
    
end
