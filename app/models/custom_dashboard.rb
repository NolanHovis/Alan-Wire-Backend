class CustomDashboard < ApplicationRecord
  belongs_to :user
  has_one :dashboard_item
end