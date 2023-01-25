class CreateBreweries < ActiveRecord::Migration[7.0]
  def change
    create_table :breweries do |t|
      t.string :brewery_name
      t.string :address
      t.string :website
      t.string :type
      t.string :state
      t.string :state_breweries

      t.timestamps
    end
  end
end
