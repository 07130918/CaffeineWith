class LogsController < ApplicationController
    
    def index
        @caffe = Caffe.all
    end
    
    def all
        @logs = Log.page(params[:page]).per(7).order("created_at DESC")
    end
    
    def new
        @caffe = Caffe.find(params[:caffe_id])
        @log = Log.new
        @suji = @caffe.id.to_i
    end
    
    def create
       Log.create(create_params)
       redirect_to :root and return
    end
    
    def destroy
        @caffe = Caffe.find(params[:caffe_id])
        @log = @caffe.logs.find(params[:id])
        @log .destroy
    end
    
    private
    
    def create_params
        params.require(:log).permit(:text).merge(caffe_id: params[:caffe_id]) 
    end
    
end
