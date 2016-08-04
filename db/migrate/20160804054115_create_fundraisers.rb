class CreateFundraisers < ActiveRecord::Migration
  def change
    create_table :fundraisers do |t|

      t.timestamps null: false
    end
  end
end
