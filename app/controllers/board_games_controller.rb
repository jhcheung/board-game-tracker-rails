class BoardGamesController < ApplicationController
    
    def index
        @board_games = BoardGame.all
    end
    
    def new
        @board_game = BoardGame.new
    end

    def create
        @board_game = BoardGame.create_from_bgg(board_game_params[:bgg_id])
        redirect_to @board_game
    end

    def show
        @board_game = BoardGame.find(params[:id])
    end

    def search
       @board_game_search = BoardGameGem.search(board_game_params[:name])
       render "new"
    end

    private
    def board_game_params
        params.require(:board_game).permit(:board_game, :bgg_id, :name)
    end

end
