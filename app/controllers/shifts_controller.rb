class ShiftsController < ApplicationController
    before_action :find_shifts, only: [:destroy]

    def new
        @shift = Shift.new
    end

    def create
        @photo.likes.create(user_id: current_user.id)

        redirect_to all_path
    end

    def destroy
        if !(already_liked?)
            flash.alert = "oops, can't unlike"
        else
            @like.destroy

            redirect_to all_path
        end
    end

    private
        def shift_params
            params.require(:shift).permit(:user_id, :photo_id, :type)
        end

        def find_user
            @user = User.find_by(params[:id])
        end

        def find_shift
            @shift = @user.shifts
        end
end