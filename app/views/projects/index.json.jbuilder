json.array!(@projects) do |project|
  json.extract! project, :id, :name, :contact_person, :contact_telephone_no, :contact_e_mail_address, :decision_protocol_link, :decision_value, :comment, :decision_date, :budget_entry
  json.url project_url(project, format: :json)
end
