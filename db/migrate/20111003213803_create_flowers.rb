class CreateFlowers < ActiveRecord::Migration
  def change
    create_table :flowers do |t|

      t.timestamps
    end
  end
end
