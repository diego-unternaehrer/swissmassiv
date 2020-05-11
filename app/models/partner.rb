class Partner < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_address?

  def full_address
    address + " " + zip_code + " " + place + " " + country
  end
end
