class CreateEventsTable < ActiveRecord::Migration
 def up
 	create_table :events do |t|
 		t.string :game_id
 		t.date :date
 		t.string :team_one
 		t.string :team_two
 		t.string :actual_score
 		t.integer :total_score
 		t.string :winner
 		t.timestamps
 	end
 end

 def down
 	drop_table :events
 end
end
