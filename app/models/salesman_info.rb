class SalesmanInfo < ApplicationRecord
  validates :name, presence: true
  validates :region, presence: true
end