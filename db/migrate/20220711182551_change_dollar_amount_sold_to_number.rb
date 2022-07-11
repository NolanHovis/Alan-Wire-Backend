class ChangeDollarAmountSoldToNumber < ActiveRecord::Migration[6.1]
  def change
    change_column :salesman_infos, :dollar_amount_sold, :float
  end
end
