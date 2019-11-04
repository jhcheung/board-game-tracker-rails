class User < ApplicationRecord
    has_many :game_plays
    has_many :board_games, through: :game_plays

    def count_of_board_game(board_game)
        self.board_games.count{ |bg| bg.id == board_game.id }
    end

end
