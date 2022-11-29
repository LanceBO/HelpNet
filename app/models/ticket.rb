class Ticket < ApplicationRecord
  belongs_to :issue, dependent: :destroy
  belongs_to :user
end
