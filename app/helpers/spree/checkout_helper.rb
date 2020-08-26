
# frozen_string_literal: true

module Spree
  module CheckoutHelper
    def checkout_states
      @order.checkout_steps
    end

    def checkout_progress
      states = checkout_states
      items = states.map do |state|
        state_name = I18n.t("spree.order_state.#{state}").titleize

        css_classes = ['nav-link']
        current_index = states.index(@order.state)
        state_index = states.index(state)

        if state_index <= current_index
          css_classes << 'active' if state_index == current_index
          text = link_to(state_name, checkout_state_path(state), class: css_classes)
        else
          css_classes << "disabled"
          text = link_to(state_name, "#", class: css_classes)
        end
        # It'd be nice to have separate classes but combining them with a dash helps out for IE6 which only sees the last class
        content_tag('li', text, class: "nav-item")
      end
      content_tag('ul', raw(items.join("\n")), class: 'nav nav-tabs nav-justified', id: "checkout-step-#{@order.state}")
    end
  end
end

