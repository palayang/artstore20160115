class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order       = order
    @user        = order.user
    @order_items = @order.items
    @order_info  = @order.info
	mail to: @user.email, subject: "Welcome to My Awesome Site"
  end
end
