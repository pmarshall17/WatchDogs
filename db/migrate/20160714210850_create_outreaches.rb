class CreateOutreaches < ActiveRecord::Migration
  def change
    create_table :outreaches do |t|
      t.string :state
      t.string :address
      t.string :name
      t.string :contact_information

      t.timestamps null: false
    end
  end
end
