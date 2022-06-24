class AddDivisionToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :division, :string, presence: true
  end
end
