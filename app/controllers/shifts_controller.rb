class ShiftsController < ApplicationController
    # before_action :find_organizations
    before_action :find_user, only: [:new, ]
    before_action :find_shifts, only: [:edit, :update, :show, :destroy]

    def index
        @organization = Organization.includes(:shifts).find(params[:organization_id])
        @shifts = Shift.all
        # @shifts = Shift.where(organization: params[:organization])
    end

    def new
        @shift = Shift.new
    end

    def create
        @organization.shifts.create(user_id: current_user.id)

        redirect_to user_organization_path(current_user, @organization)
    end

    def edit
    end

    def show
    end

    def update
        if @shift.update(shift_params)

            redirect_to @shift
        else
            render :edit
        end
    end

    def destroy
        @shift.destroy 

        redirect_to user_organization_path(current_user, @organization)
    end

    private
        def shift_params
            params.require(:shift).permit(:user_id, :organization_id, :start, :finish, :break_length)
        end

        # def find_organizations
        #     @organization = Organization.find(params[:id])
        # end

        def find_user
            @user = User.find_by(params[:id])
        end

        def find_shift
            @shift = @user.shifts
        end
end