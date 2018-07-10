class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.float :amount
      t.string :date
      t.string :desc

      t.timestamps
    end
  end
end
