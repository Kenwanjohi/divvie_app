class CreateUserExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :user_expenses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :expense, null: false, foreign_key: true
      t.decimal :amount_spent

      t.timestamps
    end
  end
end
