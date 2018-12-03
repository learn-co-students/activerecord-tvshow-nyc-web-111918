class AddSeasonToShows < ActiveRecord::Migration
  attr_accessor :season

  def change
    add_column :shows, :season, :string
  end

end
