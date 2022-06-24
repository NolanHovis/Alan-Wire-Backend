class CustomDashboard < ApplicationRecord
  belongs_to :user
  has_one :dashboard_item
  has_one :salesman
end