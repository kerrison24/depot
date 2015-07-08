class CartsController < ApplicationController
  skip_before_action :authorize, only: [:create, :update, :destroy]
  include CurrentCart
  before_action :set_cart, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart
  def show
    @cart = Cart.find(params[:id])
  end

  def destroy
    @cart.destroy if @cart.id == session[:cart_id]
    session[:cart_id] = nil
    respond_to do |format|
      format.html { redirect_to store_url }
      format.json { head :no_content }
    end
  end

  private
    def invalid_cart
      logger.error "Attempt to access invalid cart #{params[:id]}"
      redirect_to store_url, notice: 'Invalid cart'
    end
end
