class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :contact_person
      t.string :contact_telephone_no
      t.string :contact_e_mail_address
      t.string :decision_protocol_link
      t.string :decision_value
      t.text :comment
      t.string :decision_date
      t.text :terms
      t.references :budget_entry

      t.timestamps
    end
  end
end
