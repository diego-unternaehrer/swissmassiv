class AddTranslationsToPaymentMethod < SolidusSupport::Migration[4.2]
  def up
    params = { name: :string }
    Spree::PaymentMethod.create_translation_table!(params, migrate_data: true)
  end

  def down
    Spree::PaymentMethod.drop_translation_table! migrate_data: true
  end
end
