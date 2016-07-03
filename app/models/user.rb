class User < ActiveRecord::Base
  # Include default devise modules.
  has_one :preference
  has_many :votes, class_name: "DailyVote"

  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
end
