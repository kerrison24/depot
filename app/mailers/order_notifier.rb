class OrderNotifier < ApplicationMailer
  default frmo: 'Rails Tutorial <railstutorial1234@gmail.com>'
  def received(order)
    @order = order

    mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
  end

  def shipped
    @order = order

    mail to: order.email, subject: 'Pragmatic Store Order Shipped'
  end
end
