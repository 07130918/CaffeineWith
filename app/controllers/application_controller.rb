class ApplicationController < ActionController::Base
    
    protect_from_forgery with: :exception
    # CSRF対策(クロスサイトリクエストフォージェリ)アクセスしたユーザーに対して意図しない操作を行わせないため
    
    
    
    def after_sign_out_path_for(resource)
        "/users/sign_in"
    end
end
