class Issue < ApplicationRecord
  belongs_to :ticket, optional: true
  belongs_to :user
end
