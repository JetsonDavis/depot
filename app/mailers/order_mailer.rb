class OrderMailer < ApplicationMailer

  default from: 'Sam Ruby <depot@example.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received(order)
    # Also :cc, :from, :subject]
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
    puts order.to_yaml
    puts "Mail to: #{mail.to}"
    puts "Mail from: #{mail.from}"
    puts "Mail subject: #{mail.subject}"
    puts "Mail Body:"
    puts mail.body.encoded
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped(order)
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Shipped'
    puts order.to_yaml
    puts "Mail to: #{mail.to}"
    puts "Mail from: #{mail.from}"
    puts "Mail subject: #{mail.subject}"
    puts "Mail Body:"
    puts mail.body.encoded
  end
end
