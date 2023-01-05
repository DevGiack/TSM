class ApplicationController < ActionController::Base
    include OrdersHelper
    include CartsHelper    
    include CheckoutsHelper   
end
