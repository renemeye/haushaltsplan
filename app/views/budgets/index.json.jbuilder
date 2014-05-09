json.array!(@budgets) do |budget|
  json.extract! budget, :id, :name, :text, :published, :agreed_on, :agreed_protocol_link
  json.url budget_url(budget, format: :json)
end
