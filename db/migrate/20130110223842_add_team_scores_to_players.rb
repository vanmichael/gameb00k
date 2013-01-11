class AddTeamScoresToPlayers < ActiveRecord::Migration
  def change
  	add_column :players, :team1_score, :integer
  	add_column :players, :team2_score, :integer
  	remove_column :players, :score, :string
  end
end
