class AddUserIdToShezhis < ActiveRecord::Migration
  def change
    add_column :shezhis, :user_id, :string
  end
end
