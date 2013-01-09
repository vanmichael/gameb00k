module PoolsHelper

	# def show_icon_for(icon_id, size_version_key)
	# 	@icon = Icon.find_by_id(icon_id)
	# 	image_tag @icon.image_url(size_version_key).to_s
	# end

	# def current_game=(game)
	# 	@current_game = game
	# end

	# def current_game
	# 	@current_game = self.Game.find(params[:id])
	# end

	def pool_name(pool)
		if pool.game_type == 1
			"Pick The Winner"
		elsif pool.game_type == 2
			"Closest Score"
		else pool.game_type == 3
			"Total Score"
		end
	end

	def pool_instructions(pool)
		if pool.game_type == 1
			"Straight up, pick the winning team. Total drops will be divided equally amoung winning users."
		elsif pool.game_type == 2
			"Predict the closest score. Total drops go to the single winner."
		else pool.game_type == 3
			"Predict the sum of the two teams' scores. Total drops go the single winner."
		end	
	end
end