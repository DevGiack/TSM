class Admin::AdminController < ApplicationController
    before_action :check_if_admin 

    def index
      @users = User.all
    end

    private
    def check_if_admin
        unless current_user.is_admin == false 
          flash[:danger] = "Acces refusé !"
          redirect_to root_path
        end
    end
end