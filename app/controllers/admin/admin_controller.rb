class Admin::AdminController < ApplicationController
    before_action :check_if_admin 

    def index
      @users = User.all
    end

    private
    def check_if_admin
        unless current_user.is_admin == true 
          flash[:danger] = "Acces refusé !"
          redirect_to home_index_path
        end
    end
end