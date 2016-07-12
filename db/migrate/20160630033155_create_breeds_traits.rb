class CreateBreedsTraits < ActiveRecord::Migration
  def change
    create_table :breeds_traits do |t|
    	

      t.timestamps null: false
    end
  end
end
