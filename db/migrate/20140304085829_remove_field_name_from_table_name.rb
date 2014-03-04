class RemoveFieldNameFromTableName < ActiveRecord::Migration
  def change
    remove_column :posts, :avatar
  end
end
