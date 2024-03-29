class UsersController < ApplicationController
    # before_action: :find_user, only: [:show, :edit, :update, :destroy]
    # before_action: :find_organization, only: [:create, :new]
    # before_action: :currently_logged_in, only: [:edit, :update, :destroy]
    
        def index
            @organization = Organization.includes(:users).find(params[:organization_id])
            @users = User.all
        end
    
        def create
            @user = User.new(user)
    
            if @user.save
                flash.notice = "welcome!"
                session[:user_id] = @user.id
    
                redirect_to root_path
            else 
                @user.errors.full_messages

                render :new 
            end
        end
    
        def new
            @user = User.new
        end
    
        def edit
        end
    
        def show
            @organization = current_user.organization
        end
    
        def update
            if @user.update(user_params)
    
                redirect_to @user
            else
                render :edit
            end
        end

        def join
            @organization = Organization.find(params[:organization_id])
            current_user.update_attribute(:organization_id, @organization.id)

            redirect_to root_path
        end

         def leave
            current_user.update_attribute(:organization_id, nil)

            redirect_to root_path
        end
    
        def destroy
            @user.destroy
            
            redirect_to login_path
        end
    
    private
        def find_user
            @user = User.find_by(params[:id])
        end

        # def find_organization
        #     @organization = Organization.find(params[:id])
        # end
    
        def currently_logged_in
            unless logged_in?
                flash.alert = "oops, please log in"
    
                redirect_to login_path
            end
        end
    
        def user_params
            params.require(:user).permit(:organization_id, :name, :email, :password)
        end
end 