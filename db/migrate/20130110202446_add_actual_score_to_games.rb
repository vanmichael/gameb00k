class AddActualScoreToGames < ActiveRecord::Migration
  def change
  	add_column :games, :actual_score, :string
  end
end
