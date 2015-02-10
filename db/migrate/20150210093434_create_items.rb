class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :price
      t.string :time
      t.string :lei
      t.string :ps

      t.timestamps
    end
  end
end
