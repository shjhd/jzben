class CreateShezhis < ActiveRecord::Migration
  def change
    create_table :shezhis do |t|
      t.string :lei
      t.string :way

      t.timestamps
    end
  end
end
