class HistoriesController < ApplicationController

	def index
		@user = User.find_by_id(params[:user_id])
	  @histories = @user.histories
	end

	def show
		@history = History.find_by_id(params[:id])
	end
end
