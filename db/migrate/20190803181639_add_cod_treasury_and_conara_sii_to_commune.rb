class AddCodTreasuryAndConaraSiiToCommune < ActiveRecord::Migration[5.2]
  def change
    add_column :communes, :cod_treasury, :integer
    add_column :communes, :conara_sii, :integer
  end
end
