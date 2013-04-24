class AlterGroups < ActiveRecord::Migration
  def up
    add_column :groups, :access, :string
    add_column :groups, :description, :text
    add_column :groups, :active_level, :string
    rename_column :groups, :group_name, :name
  end

  def down
    rename_column :groups, :name, :group_name
    remove_column :groups, :active_level
    remove_column :groups, :description
    remove_column :groups, :access
  end
end
