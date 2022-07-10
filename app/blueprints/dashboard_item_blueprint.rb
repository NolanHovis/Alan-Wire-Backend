class DashboardItemBlueprint < Blueprinter::Base
  identifier :id
  fields :name, :size, :display_type

  association :salesman_info, blueprint: SalesmanBlueprint do |dashboard_item, _options|
    dashboard_item.salesman_info
  end

  view :normal do
    fields :created_at, :updated_at
    association :salesman_info, blueprint: SalesmanBlueprint do |dashboard_item, _options|
      dashboard_item.salesman_info
    end
  end
end