class CartItemsController < ApplicationController
    
    def create 
        @cart_item = current_cart.cart_items.find_by(product_id: params[:cart_item][:product_id])
        if @cart_item.blank?
            @cart_item = current_cart.cart_items.build(product_id: params[:cart_item][:product_id], qty: 0)
        end
        @cart_item.qty += params[:cart_item][:qty].to_i
        if @cart_item.save
        end
        redirect_to current_cart
    end
    
    def destroy
        @cart_item = current_cart.cart_items.find_by(product_id: params[:product_id])
        @cart_item.destroy
        redirect_to current_cart
    end

end
