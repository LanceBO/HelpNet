class Training < ApplicationRecord
  after_validation :geocode, if: :will_save_change_to_address?
  geocoded_by :address
end
