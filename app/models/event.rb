class Event < ActiveRecord::Base
attr_accessible :user_id, :game_id, :date, :team_one, :team_two, :actual_score, :total_score, :winner
has_many :pools
has_many :users, :through => :pools

end