class Salesman < ApplicationRecord
    validates :name String:, uniqueness: true, presence: true
    validates :qty_wire Integer:, presence: true
    validates :part_number String:, presence: true
    validates :dollar_amnt Numeric:, presence: true
    validates :region String:, presence: true

end