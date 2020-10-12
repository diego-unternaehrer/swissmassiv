module Spree
  class OrderMailer < BaseMailer
    def confirm_email(order, resend = false)
      @order = order
      @store = @order.store
      subject = build_subject(t('.subject'), resend)

      mail(to: @order.email, bcc: from_address(@store), from: from_address(@store), subject: subject)
    end
  end
end
