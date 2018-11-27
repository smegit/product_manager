module DataExport
    class Export
        def initialize
            @export_path = "#{Rails.root}/public/production/export"
        end

        def export_products
            prod_types = Product.unique_type
            
            # prod_types.each { |x| 
            #     file = @export_path + "/products-#{x}-#{Date.today}.csv"
            #     File.open(file. "w"){ }
            # }
            prod_types.each { |x| 
                file = @export_path + "/products-#{x}.csv"
                File.open(file, "w") do |csv|
                    csv << Product.to_csv(x)
                end     
            }    
        end
    end
end