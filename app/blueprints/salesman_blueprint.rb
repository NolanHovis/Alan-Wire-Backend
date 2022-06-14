class SalesmanBlueprint < Blueprinter::Base
  identifier :id
  fields :name, :qty_wire, :part_number, :dollar_amount_sold, :region

  view :normal do
    fields :created_at, :updated_at
  end
end