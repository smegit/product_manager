class CreateSelectionControls < ActiveRecord::Migration[5.0]
  def change
    create_table :selection_controls do |t|
      t.string :name
      t.string :value
      t.string :code
      t.string :label
      t.text :description

      t.timestamps
    end
  end
end
