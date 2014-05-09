class BudgetEntry < ActiveRecord::Base
  belongs_to :budget
  has_ancestry
end
