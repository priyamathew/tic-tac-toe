class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :board
      t.integer :player_1
      t.integer :player_2
      t.integer :turn

      t.timestamps
    end
  end
end


