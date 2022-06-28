class CustomDashboardBlueprint < Blueprinter::Base 
  identifier :id 
  fields :name

  view :normal do
    fields :created_at, :updated_at, :name
    association :salesman_infos, blueprint: SalesmanBlueprint
    association :dashboard_items, blueprint: DashboardItemBlueprint
    association :user, blueprint: UserBlueprint
  end
end