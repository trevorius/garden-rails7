class CreateBeds < ActiveRecord::Migration[7.0]
  def change
    create_table :beds do |t|
      t.string :name
      t.string :bed_type
      t.datetime :last_watered

      t.timestamps
    end
  end
end
