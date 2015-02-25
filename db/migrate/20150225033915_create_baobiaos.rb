class CreateBaobiaos < ActiveRecord::Migration
  def change
    create_table :baobiaos do |t|

      t.timestamps
    end
  end
end
