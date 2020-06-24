class AddCountryCodeToPartners < ActiveRecord::Migration[5.2]
  def change
    add_column :partners, :country_code, :string
  end
end
