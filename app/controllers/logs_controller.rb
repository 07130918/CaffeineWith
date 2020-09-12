class LogsController < ApplicationController
    
    def index
        
    end
    
    def all
        @logs = Log.order("created_at DESC").limit(10)
    end
    
    def new
        
    end
    
    def create
        
    end
    
    def show
        
    end
    
    def destroy
        
    end
end
