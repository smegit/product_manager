class AddFileTypeToAttachments < ActiveRecord::Migration[5.0]
  def change
    add_column :attachments, :file_type, :string
  end
end
