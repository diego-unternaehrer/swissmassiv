# frozen_string_literal: true

module SolidusGlobalize
  module Spree
    module Admin
      module PaymentMethodsControllerDecorator

        def validate_payment_method_type
          super unless params['payment_method'][:translations_attributes]
        end

        def update
          payment_method = ::Spree::PaymentMethod.find(params[:id])
          payment_method.update(update_payment_method_attribute)
          redirect_to spree.admin_payment_methods_path
        end

        private

        def update_payment_method_attribute
          params.require(:payment_method).permit(permitted_params)
        end

        def permitted_params
          [translations_attributes: [:id, :locale, :name]]
        end

        ::Spree::Admin::PaymentMethodsController.prepend self
      end
    end
  end
end
