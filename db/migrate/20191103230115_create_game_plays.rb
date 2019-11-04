class CreateGamePlays < ActiveRecord::Migration[6.0]
  def change
    create_table :game_plays do |t|
      t.integer :board_game_id
      t.integer :user_id

      t.timestamps
    end
  end
end
