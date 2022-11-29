class Booking < ApplicationRecord
  belongs_to :training, dependent: :destroy
  belongs_to :user
end
