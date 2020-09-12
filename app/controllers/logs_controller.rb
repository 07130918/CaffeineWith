class LogsController < ApplicationController
    
    def index
    end
    
    def all
        @logs = Log.page(params[:page]).per(7).order("created_at DESC")
    end
    
    def new
        
    end
    
    def create
        
    end
    
    def show
        
    end
    
    def destroy
        log = Log.find(params[:id])
        log.destroy
    end
end
