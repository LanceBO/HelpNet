class Review < ApplicationRecord
  belongs_to :ticket, dependent: :destroy
end
