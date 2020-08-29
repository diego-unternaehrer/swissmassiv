module Swissmassiv::MakePhoneOptionalDecorator
  def require_phone?
    false
  end

  Spree::Address.prepend self
end
