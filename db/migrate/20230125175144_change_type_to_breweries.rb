class ChangeTypeToBreweries < ActiveRecord::Migration[7.0]
  def change
    change_column :breweries, :state_breweries, "numeric USING CAST(state_breweries AS numeric)"
    change_column :breweries, :state_breweries, :decimal, precision: 9, scale: 2
    # change_column :breweries, :state_breweries, :integer
  end
end
