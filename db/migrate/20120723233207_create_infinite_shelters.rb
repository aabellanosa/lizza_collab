class CreateInfiniteShelters < ActiveRecord::Migration
  def change
    create_table :infinite_shelters do |t|

      t.timestamps
    end
  end
end
