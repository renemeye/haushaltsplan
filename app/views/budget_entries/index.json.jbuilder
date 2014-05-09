json.array!(@budget_entries) do |budget_entry|
  json.extract! budget_entry, :id, :name, :income, :value_in_euro, :parent_budget_entry_id, :budget_id
  json.url budget_entry_url(budget_entry, format: :json)
end
