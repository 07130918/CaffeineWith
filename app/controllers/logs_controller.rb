class LogsController < ApplicationController
    
     before_action :authenticate_user!, except: [:index, :all]
    
    def index
    
        if user_signed_in?
            c_id = Log.created_today.where(user_id: current_user.id).pluck(:caffe_id)
            # c_id = Log.created_today.where(user_id: 9).pluck(:caffe_id)
                        # created_todayはlog.rbに定義
            each.doで1つずつ取り出してしまうのはどうだろう？？9/26
            caffeine = Caffe.find(c_id).pluck(:caffeine_mg)
            # caffeine = Caffe.where(id: c_id).pluck(:caffeine_mg)
            @today_caffeine = caffeine.inject(:+)
        end
    end
    
    def all
        @logs = Log.page(params[:page]).per(6).order("created_at DESC")
    end
    
    def new
        @caffe = Caffe.find(params[:caffe_id])
        @log = Log.new
        @suji = @caffe.id.to_i
    end
    
    def create
       Log.create(create_params)
    end

    def destroy
        @caffe = Caffe.find(params[:caffe_id])
        @log = @caffe.logs.find(params[:id])
        @log .destroy
    end
    
    private
    
    def create_params
        params.require(:log).permit(:text).merge(caffe_id: params[:caffe_id], user_id: current_user.id) 
    end
    
end
