class AddCountryIdToDistrict < ActiveRecord::Migration
  def change
    add_column :districts, :district_id, :integer
  end
end
