class OrganizationsController < ApplicationController
    before_action :find_organizations, only: [:show, :edit, :update, :destroy]

    def index
        @organizations = current_user.organizations
    end

    def new
       @organization = Organization.new
    end
    
    def create
        @organization = current_user.organizations.build(organization_params)
        @organization.user_id = current_user.id
        
        if @organization.save
            flash.notice = "organization created"

            redirect_to user_organization_path(current_user, @organization)
        else
            @organization.errors.full_messages

            render :new
            # redirect_to root_path
        end
    end

    def show
    end

    def edit
    end

    def update
        if @organization.update(organization_params)

            redirect_to user_organization_path(current_user, @organization)
        else
            @organization.errors.full_messages
            
            render :edit
        end
    end

    def destroy
        @organization.destroy
    
        redirect_to user_organizations_path(current_user)
    end

    private 
        def find_organizations
            @organization = Organization.find(params[:id])
        end

        def organization_params
            params.require(:organization).permit(:name, :hourly_rate)
        end
end