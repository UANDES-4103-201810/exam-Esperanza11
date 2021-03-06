class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if not session[:order_id].nil?
      Order.find(session[:order_id])
    else
      last = Order.last
      Order.new(id: (last.id+1))
    end
  end
end
