class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.string :description
      t.text :notes
      t.references :group, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.string :image_url

      t.timestamps
    end
  end
end
