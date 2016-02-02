class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order       = order
    @user        = order.user
    @order_items = @order.items
    @order_info  = @order.info
	mail to: "palapala291295@hotmail.com", subject: "Welcome to My Awesome Site"
  end
end
