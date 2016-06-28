class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.integer :zip
    	t.has_many :favorites

      t.timestamps null: false
    end
  end
end
