class AddUrlToFunctions < ActiveRecord::Migration[5.0]
  def change
    add_column :functions, :url, :string
  end
end
