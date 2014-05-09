module BudgetEntriesHelper
  def nested_budget_entries (budget_entries)
    sub = budget_entries.map do |budget_entry, sub_budget_entries|
      render(budget_entry, :sub_budget_entries => sub_budget_entries)
    end.join.html_safe
    content_tag( :ul, sub , :class => "list-group")
  end

  def sum_nested_budget_entries (budget_entries)
    budget_entries.map do |budget_entry, sub_budget_entries|
      tree_sum = 0
      tree_sum += budget_entry.value_in_euro unless budget_entry.value_in_euro.nil?
      subtree_sum = sum_nested_budget_entries(sub_budget_entries)
      tree_sum += subtree_sum unless subtree_sum.nil?
      tree_sum
    end.inject{|sum,x| sum + x }
  end
end
