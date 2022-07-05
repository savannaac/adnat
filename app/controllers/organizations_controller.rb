class OrganizationsController < ApplicationController
    before_action :find_organizations, only: [:show, :edit, :update, :destroy]

    def index
        # @organizations = current_user.organizations
        @organizations = Organization.all
    end

    def new
       @organization = Organization.new
    end
    
    def create
        # @organization = current_user.organizations.build(organization_params)
        # @organization.user_id = current_user.id
        
        # if @organization.save
        #     flash.notice = "organization created"

        #     redirect_to user_organization_path(current_user, @organization)
        # else
        #     @organization.errors.full_messages

        #     render :new
        #     # redirect_to root_path
        # end

        @organization = Organization.new(organization_params)

        if @organization.save 
            flash.notice = "organization saved"

            # redirect_to root_path
            redirect_to organization_path(@organization)
        else
            @organization.errors.full_messages

            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        if @organization.update(organization_params)

            redirect_to organization_path(@organization)
        else
            @organization.errors.full_messages
            
            render :edit
        end
    end

    def join
        @organization = Organization.find(params[:id])
        current_user.update_attribute(:organization_id, @organization)

        redirect_to root_path
    end

    def destroy
        @organization.destroy
    
        redirect_to root_path
    end

    private 
        def find_organizations
            @organization = Organization.find(params[:id])
        end

        def organization_params
            params.require(:organization).permit(:name, :hourly_rate)
        end
end