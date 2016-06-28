class CreateCompilations < ActiveRecord::Migration
  def change
    create_table :compilations do |t|

      t.timestamps null: false
    end
  end
end
