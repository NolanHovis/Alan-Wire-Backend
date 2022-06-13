class SalesmanInfo < ApplicationRecord
  validates :name, presence: true
  validates :region, presence: true
  validates :qty_wire 
  validates :dollar_amount_sold
  validates :part_number
end