class CustomDashboard < ApplicationRecord
  belongs_to :user
  has_many :dashboard_item
end