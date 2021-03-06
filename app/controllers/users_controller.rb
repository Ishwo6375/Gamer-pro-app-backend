class UsersController < ApplicationController
   
    def index
        @users = User.all 
        render json: @users
    end

    def create
        @user = User.create(user_params)
        render json: @user
    end 
   
    

    def show
        @user = User.find_by(id: params[:id]) 
        if @user
            render json: @user
        else 
            render json: {error: 'not found'}
        end
    end
    
    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: @user
    end

    private

    def user_params
        params.permit()
    end
    
        
end