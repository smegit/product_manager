class CreateAesthetics < ActiveRecord::Migration[5.0]
  def change
    create_table :aesthetics do |t|
      t.string :control_type
      t.string :aesthetic_description
      t.string :aesthetic_code

      t.timestamps
    end
  end
end
