class Day < ApplicationRecord
  has_many :votes, class_name: "DailyVote"

  def self.today
    Day.where(date: Date.today).first_or_create
  end

  def vote(user_id, place_id)
    vote = today.votes.where(user_id: user_id).first_or_create
    vote.update_attribute(:place_id, place_id)
  end
end
