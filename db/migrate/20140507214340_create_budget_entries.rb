class CreateBudgetEntries < ActiveRecord::Migration
  def change
    create_table :budget_entries do |t|
      t.string :name
      t.boolean :income
      t.float :value_in_euro
      t.integer :parent_budget_entry_id
      t.references :budget, index: true

      t.timestamps
    end
  end
end
