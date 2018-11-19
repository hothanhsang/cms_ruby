class CategoriesController < ApplicationController
	def show
		@category = Category.include?(:pages).find_params[:id]
	end
end