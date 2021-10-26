class UsersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

 def index
  @user = User.all
  render json: @users
 end

 def create
  @user = User.all(user_params)
  render json: @user
 end

 def show
  @user = find_user
  if @user
   render json: @user
   else
     render json: {error: 'not found'}
  end
 end

 def update
  @user = find_user
  @user.update(user_params)
  render json: @user
 end

 def destroy
   @user = find_user
   @user.destroy
    render json: @user
 end

  private

   def user_params
    params.require(:user).permit(:username, :password_digest)
   end

   def find_user
      User.find(params[:id])
   end

    def render_not_found
        render json: { error: "User not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

  
end
