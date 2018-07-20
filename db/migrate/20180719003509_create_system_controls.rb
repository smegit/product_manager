class CreateSystemControls < ActiveRecord::Migration[5.0]
  def change
    create_table :system_controls do |t|
      t.string :type
      t.jsonb :value

      t.timestamps
    end
  end
end
