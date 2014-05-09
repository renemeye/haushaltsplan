class BudgetEntry < ActiveRecord::Base
  belongs_to :budget
  has_ancestry

  def self.collection_for_budget_entries_select(budget_entries)
    @categories = ancestry_options(BudgetEntry.all.arrange(:order => 'name')) {|i| "#{'-' * i.depth} #{i.name}" }
  end

  def self.ancestry_options(items)
    result = []
    items.map do |item, sub_items|
      result << [yield(item), item.id]
      #this is a recursive call:
      result += ancestry_options(sub_items) {|i| "#{'-' * i.depth} #{i.name}" }
    end
    result
  end

end
