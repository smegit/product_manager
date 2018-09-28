class OrdersController < ApplicationController
    before_action :set_order, only: %i[show edit update destroy]
    def index
        orders = Order.order('created_at DESC')
        render json: {status: 'success', message: 'Loaded orders', data: orders}, status: :ok   
    end
    
    def show
        order = Order.find(params[:id])
        render json: {status: 'success', message: 'Load book', data: order }, status: :ok
    end

    def create
        order = order.new(order_params)
        if order.save
            render json: {status: 'success', message: 'Saved order', data: order }, status: :ok
        else
            render json: {status: 'error', message: 'Order not save', data: order.errors }, status: :unprocessable_entity
        end
    end

    def destroy
        order = Order.find(params[:id])
        order.destroy
        render json: {status: 'success', message: 'Deleted order', data: order}, status: :ok
    end

    def update
        order = Order.find(params[:id])
        if order.update_attributes(order_params)
            render json: {status: 'success', message: 'Updated order', data: order }, status: :ok
        else
            render json: {status: 'error', message: 'Order not updated', data: order.errors }, status: :unprocessable_entity
        end

    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end
  
    # Only allow a trusted parameter "white list" through.
    def order_params
      params.require(:order).permit(:number, :date, :name, :reference, :rep_code, :status)
    end

end
