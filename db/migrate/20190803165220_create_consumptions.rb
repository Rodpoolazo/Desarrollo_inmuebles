class CreateConsumptions < ActiveRecord::Migration[5.2]
  def change
    create_table :consumptions do |t|
      t.references :service_account, foreign_key: true
      t.references :realty, foreign_key: true
      t.string :date
      t.string :start_reading
      t.string :final_reading
      t.float :unit_consumption
      t.integer :consumption_amount
      t.integer :total_debt
      t.string :agreement
      t.integer :unpaid_months
      t.string :last_payment

      t.timestamps
    end
  end
end
