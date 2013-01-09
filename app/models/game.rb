class Game < ActiveRecord::Base
  attr_accessible :description, :name, :date, :icon_id, :pool_id, :game_id, :team_one, :team_two
  belongs_to :user
  has_many :users, :through => :pools
  has_many :pools 
  has_many :icons

  validates :user_id, presence: true
  validates :team_one, presence: true
  validates :team_two, presence: true
  validates :description, presence: true, length: { maximum: 50 }

  default_scope order: 'games.created_at DESC'
end
