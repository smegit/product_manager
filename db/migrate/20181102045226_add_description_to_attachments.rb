class AddDescriptionToAttachments < ActiveRecord::Migration[5.0]
  def change
    add_column :attachments, :description, :string
  end
end
