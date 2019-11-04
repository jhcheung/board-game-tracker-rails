class GamePlaysController < ApplicationController
    def index
        @game_plays = GamePlay.all
    end
    
    def new
        @game_play = GamePlay.new
        @board_games = BoardGame.all
        @users = User.all
    end

    def create
        @game_play = GamePlay.create game_play_params
        redirect_to @game_play
    end

    def show
        @game_play = GamePlay.find(params[:id])
        @user = @game_play.user
        @board_game = @game_play.board_game
    end

    private
    def game_play_params
        params.require(:game_play).permit(:board_game_id, :user_id)
    end
end
