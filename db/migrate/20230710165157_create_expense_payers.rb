class CreateExpensePayers < ActiveRecord::Migration[7.0]
  def change
    create_table :expense_payers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :expense, null: false, foreign_key: true
      t.decimal :amount_paid

      t.timestamps
    end
  end
end
