class OrganizationsController < ApplicationController
    before_action :find_organizations, only: [:show, :edit, :update, :destroy]

    def index
        @organizations = Organization.all
    end

    def new
       @organization = Organization.new
    end
    
    def create
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