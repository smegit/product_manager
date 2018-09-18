namespace :import do

  desc 'Import Data'
  task :import_data => :environment do
    DataImport::Import.new.import_features
    DataImport::Import.new.import_products
    #DataImport::Import.new.import_system_control
  end

  desc 'Import Images'
  task :import_images => :environment do
    DataImport::Import.new.import_images
  end

end