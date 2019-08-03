class AddNumberRegionToRegion < ActiveRecord::Migration[5.2]
  def change
    add_column :regions, :number_region, :integer
  end
end
