class CreateShows < ActiveRecord::Migration
  attr_reader :name
  attr_accessor :network, :day, :rating

  def change
    create_table :shows do |t|
      t.string :name
      t.string :network
      t.string :day
      t.integer :rating
    end
  end
end
