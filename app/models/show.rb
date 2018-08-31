class Show < ActiveRecord::Base

  def self.highest_rating
   Show.maximum(:ratings)
  end

  def self.most_popular_show
    Show.order(:ratings).first
  end

  def self.lowest_rating
    Show.minimum(:ratings)
  end

  def self.least_popular_show
    Show.order(:ratings).last
  end

  def self.ratings_sum
    Show.sum(:ratings)
  end

  def self.popular_shows
    Show.where("ratings > ?", 5)
  end

  def self.shows_by_alphabetical_order
    Show.order(:name)
  end

end
