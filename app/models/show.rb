require "pry"

class Show < ActiveRecord::Base
  def self.highest_rating
    Show.all.max_by{|show| show.rating}.rating
  end
  def self.most_popular_show
    Show.all.max_by{|show| show.rating}
  end
  def self.lowest_rating
    Show.all.min_by{|show| show.rating}.rating
  end
  def self.least_popular_show
    Show.all.min_by{|show| show.rating}
  end
  def self.ratings_sum
    Show.all.inject(0){|result, show| result+=show.rating}
  end
  def self.popular_shows
    Show.where("rating>5")
  end
  def self.shows_by_alphabetical_order
    Show.order(:name)
  end
end
