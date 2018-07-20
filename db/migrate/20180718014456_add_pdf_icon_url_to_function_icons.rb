class AddPdfIconUrlToFunctionIcons < ActiveRecord::Migration[5.0]
  def change
    add_column :function_icons, :pdf_icon_url, :string
  end
end
