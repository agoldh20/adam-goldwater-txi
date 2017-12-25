class OrdersController < ApplicationController

  def create
    pending_order = current_table.current_pending

    order = Order.create(table_id: current_table.id)
    order.save
    pending_order.update_all(status: "ordered", order_id: order.id)
    order.calculate_totals
    order.save
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find(params[:id])
  end
end
