class Admin::ProductController < ApplicationController
    def index
        @products = Product.all
    end

    def show
        @products = Product.find(params[:id]) 
    end

    def new
        @products = Product.new
    end

    def create
        @products = Product.create(name: params[:name], description: params[:description], unity: params[:unity], price: params[:price])   
        if @products.save 
            redirect_to admin_product_index_path
        else
            render inline: @products.errors.full_messages 
        end
    end

    def edit
        @products = Product.find(params[:id])
    end

    def update
        @products = Product.find(params[:id])
        if @products.update(name: params[:name], description: params[:description], unity: params[:unity], price: params[:price])   
         redirect_to admin_product_path
        else
           render :edit
        end
    end

    def destroy
        @products = Product.find(params[:id])
        @products.destroy
        redirect_to admin_product_index_path
    end
end