class ShiftsController < ApplicationController
    before_action :find_user, only: [:new]
    before_action :find_shift, only: [:edit, :update, :show, :destroy]

    def index
        @shifts = Shift.all
    end

    def new
        @shift = Shift.new
    end

    def create
        @shift = current_user.shifts.build(shift_params)
        @shift.user_id = current_user.id
        
        if @shift.save
            flash.notice = "shift created"

            redirect_to user_path(current_user)
        else
            @shift.errors.full_messages

            render :new
            # redirect_to root_path
        end
    end

    def edit
    end

    def show
    end

    def update
        if @shift.update(shift_params)

            redirect_to user_path(current_user)
        else
            render :edit
        end
    end

    def destroy
        @shift.destroy 

        redirect_to user_path(current_user)
    end

    private
        def shift_params
            params.require(:shift).permit(:user_id, :organization_id, :start, :finish, :break_length)
        end

        def find_user
            @user = User.find_by(params[:id])
        end

        def find_shift
            @shift = Shift.find(params[:id])
        end
end