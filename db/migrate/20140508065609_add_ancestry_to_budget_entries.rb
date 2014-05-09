class AddAncestryToBudgetEntries < ActiveRecord::Migration
  def change
    add_column :budget_entries, :ancestry, :string
    add_index :budget_entries, :ancestry
  end
end
