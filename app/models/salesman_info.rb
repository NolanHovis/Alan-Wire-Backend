class SalesmanInfo < ApplicationRecord
  validates :name, presence: true
  validates :region, presence: true

  # belongs_to :dashboard_item
end