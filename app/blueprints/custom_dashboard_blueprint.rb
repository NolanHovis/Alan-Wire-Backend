class CustomDashboardBlueprint < Blueprinter::Base 
  identifier :id 
  fields :name, :dashboard_item

  association :dashboard_item, blueprint: DashboardItemBlueprint do |custom_dashboard, _options|
    custom_dashboard.dashboard_item
  end

  # view :normal do
  #   fields :created_at, :updated_at, :name, :dashboard_item
    
  #   association :dashboard_item, blueprint: DashboardItemBlueprint
  # end
end