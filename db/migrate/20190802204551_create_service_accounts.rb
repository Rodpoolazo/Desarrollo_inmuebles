class CreateServiceAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :service_accounts do |t|
      t.integer :light
      t.integer :water
      t.integer :gas
      t.integer :common_expense
      t.integer :contribution
      t.integer :garbage

      t.timestamps
    end
  end
end
