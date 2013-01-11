class AddActualTeamScoresToGames < ActiveRecord::Migration
  def change
  	add_column :games, :actual_team1_score, :integer
  	add_column :games, :actual_team2_score, :integer
  	remove_column :games, :actual_score
  end
end
