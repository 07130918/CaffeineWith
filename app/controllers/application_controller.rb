class ApplicationController < ActionController::Base
    
    protect_from_forgery with: :exception
    # CSRF対策(クロスサイトリクエストフォージェリ)アクセスしたユーザーに対して意図しない操作を行わせないため
    
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    def after_sign_out_path_for(resource)
        "/users/sign_in"
    end
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :image])
    end

end
