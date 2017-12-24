class SessionsController < ApplicationController
  def create
    table_number = Table.find_by(params[:name])
    session[:table_id] = table_number.id
    redirect_to "/menu_index"
  end

  def destroy
    session[:table_id] = nil
    redirect_to "/table"
  end
end
