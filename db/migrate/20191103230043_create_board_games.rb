class CreateBoardGames < ActiveRecord::Migration[6.0]
  def change
    create_table :board_games do |t|
      t.string :name
      t.integer :year_published
      t.integer :bgg_id
      t.string :type_of_item

      t.timestamps
    end
  end
end
