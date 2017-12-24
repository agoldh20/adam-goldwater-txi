class ReviewOrdersController < ApplicationController
  def index
    if current_table && current_table.current_pending.any?
      @review_orders = current_table.current_pending
    else
      "No Order Placed Yet"
    end
  end

  def create
    review_order = ReviewOrder.create!(
                                       table_id: current_table.id,
                                       menu_item_id: params[:menu_item_id],
                                       quantity: params[:quantity],
                                       status: "pending"
                                       )
    redirect_back(fallback_location: root_path)
  end

  def destroy
    review_order = ReviewOrder.find(params[:id])
    review_order.update(status: "removed")
    redirect_back(fallback_location: root_path)
  end
end
