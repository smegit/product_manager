namespace :export do
  desc "Export Data"
  task export_all_to_csv: :environment do
    DataExport::Export.new.export_products
  end

end
