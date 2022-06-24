class DashboardItem < ApplicationRecord
    #add validations here
    validates :name, presence: true, uniqueness: true;
    validates :size, presence: true;
    validates :display_type, presence: true;
end
