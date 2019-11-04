class BoardGame < ApplicationRecord
    has_many :game_plays
    has_many :users, through: :game_plays


    def self.create_from_bgg(bgg_id)
        board_game = BoardGameGem.get_item(bgg_id)
        self.create(name: board_game.name, year_published: board_game.year_published, type_of_item: board_game.type, bgg_id: board_game.id)
    end

end
