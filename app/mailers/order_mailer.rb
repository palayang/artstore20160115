class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order       = order
    @user        = order.try(:user)
    @order_items = @order.try(:items)
    @order_info  = @order.try(:info)
	mail(to: @user.try(:email), subject: 'Welcome to My Awesome Site')
  end
end
