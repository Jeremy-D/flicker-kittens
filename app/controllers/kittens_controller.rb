class KittensController < ApplicationController
	def index
		@kittens = Kitten.all
	end
	def new
		@user = User.new
	end
	def show
		@user = User.find(params[:id])
	end
	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "New Kitten Created!!!"
		else
			render 'new'
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			flash[:success] = "Kitten Updated!"
			redirect_to @user
		else
			render 'edit'
		end
	end

	def destroy
		User.find(params[:id]).destroy
		flash[:success] = "User Deleted!"
		redirect_to users_url
	end

	private

	def user_params
		params.require(:kitten).permit(:name, :age, :cuteness, :softness)
	end



end

