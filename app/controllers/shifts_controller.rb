class ShiftsController < ApplicationController
    before_action :find_organizations
    before_action :find_shifts, only: [:destroy]

    def index
        # @shifts = Organization.shift.all
        @shifts = Shift.where(organization: params[:organization])
    end

    def new
        @shift = Shift.new
    end

    def create
        @organization.shifts.create(user_id: current_user.id)

        redirect_to user_organization_path(current_user, @organization)
    end

    def destroy
        @shift.destroy 

        redirect_to user_organization_path(current_user, @organization)
    end

    private
        def shift_params
            params.require(:shift).permit(:user_id, :organization_id, :start, :finish, :break_length)
        end

        def find_user
            @user = User.find_by(params[:id])
        end

        def find_shift
            @shift = @user.shifts
        end
end