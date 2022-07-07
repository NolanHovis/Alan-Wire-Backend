class DashboardItemBlueprint < Blueprinter::Base
  identifier :id
  fields :name, :size, :display_type

  view :normal do
    fields :created_at, :updated_at
    association :salesman_info, blueprint: SalesmanBlueprint
  end
end