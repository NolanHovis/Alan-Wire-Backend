class DashboardItem < ApplicationRecord
    #add validations here
    validates :name, presence: true, uniqueness: true;
    validates :size, presence: true;
    validates :display_type, presence: true;

    has_one :salesman_info
    belongs_to :user
end
