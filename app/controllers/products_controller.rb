class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def add_to_cart
		@product = Product.find(params[:id])

		if !current_cart.items.include?(@product)
			current_cart.add_product_to_cart(@product)
			#current_cart defined in app/controllers/application_controller.rb內@current_cart	
			flash[:notice] = "你已成功將 #{@product.title} 加入購物車"
		else
			flash[:warning] = "你的購物車內已有此物品"
		end
		
		redirect_to :back
		
	end
end
