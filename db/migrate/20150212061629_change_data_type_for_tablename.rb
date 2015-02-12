class ChangeDataTypeForTablename < ActiveRecord::Migration

  def change
    remove_column :items , :price
    remove_column :items , :time
    add_column :items, :price, :decimal, precision: 8, scale: 2
    add_column :items, :time, :date
    add_column :items, :way, :string
  end

end
