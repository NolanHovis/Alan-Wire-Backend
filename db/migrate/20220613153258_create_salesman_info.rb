class CreateSalesmanInfo < ActiveRecord::Migration[6.1]
  def change
    create_table :salesman_infos do |t|
      t.string :name
      t.string :region
      t.string :part_number
      t.integer :qty_wire
      t.integer :dollar_amount_sold
      t.timestamps
    end
  end
end
