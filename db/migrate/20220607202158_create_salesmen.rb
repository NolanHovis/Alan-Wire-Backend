class CreateSalesmen < ActiveRecord::Migration[6.1]
  def change
    create_table :salesmen do |t|
      t.string :name
      t.string :qty_wire
      t.string :part_number
      t.string :dollar_amnt
      t.string :region

      t.timestamps
    end
  end
end
