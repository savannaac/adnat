class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    # adds name field to devise
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :order_by_recently_created

    def all_shifts
     @shifts = Shift.all
    end

    def order_by_recently_created
     @ordered_shifts = all_shifts.by_recently_created
    end

    protected
         def configure_permitted_parameters
              devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :organization_id, :email, :password, :password_confirmation)}

              devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :organization_id, :email, :password, :current_password)}
         end
end