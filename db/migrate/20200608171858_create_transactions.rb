class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :description
      t.decimal :amount
      t.references :user, foreign_key: true
      t.references :festival, foreign_key: true

      t.timestamps
    end
  end
end
