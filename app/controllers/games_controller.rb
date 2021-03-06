class GamesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

 def index
        @games = Game.all
        render json: @games
    end
    
    def create
     @games = Game.create!(game_params)
     render json: @games
    end


    def show
        @game = find_game 
        render json: @game
    end

    def update
        @game = find_game
        @game.update!(game_params)
        render json: @game
    end
 
 def destroy
  @game = find_game
  game.destroy
  head :no_content
 end

  private

   def game_params
    params.require(:game).permit(:title, :description, :image, :video_url, :likes, :dislikes, :liked, :disliked, :genre_id)
   end

   def find_game
      Game.find(params[:id])
   end

    def render_not_found
        render json: { error: "Game not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

  
end
