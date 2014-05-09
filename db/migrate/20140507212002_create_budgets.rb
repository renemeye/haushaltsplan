class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.string :name
      t.text :text
      t.boolean :published
      t.date :agreed_on
      t.string :agreed_protocol_link

      t.timestamps
    end
  end
end
