class LogsController < ApplicationController
    
    def index
        @caffe = Caffe.all
    end
    
    def all
        @logs = Log.page(params[:page]).per(7).order("created_at DESC")
    end
    
    def new
        @log = Log.new
    end
    
    def create
       @log = Log.create(create_params)
    end
    
    def show
        
    end
    
    def destroy
        @log = Log.find(params[:id])
        @log.destroy
    end
    
    private
    
    def create_params
        # params.require(:log).permit(:text).merge(caffe_id: params[:caffe_id]) 
    end
    
end
