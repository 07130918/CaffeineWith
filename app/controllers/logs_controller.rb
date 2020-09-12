class LogsController < ApplicationController
    
    def index
        
    end
    
    def all
        @logs = Log.all.limit(7)
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
