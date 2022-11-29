class AdminController < ApplicationController
    # before_action :check_if_admin

    def index
        @users = User.all
    end

    private

    def check_if_admin 
        redirect_to home_index_path if current_user.admin == false 
    end
end
