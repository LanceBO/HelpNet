class Issue < ApplicationRecord
  has_one_attached :ticket
  belongs_to :user
end
