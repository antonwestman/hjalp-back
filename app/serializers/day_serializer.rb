class DaySerializer < ActiveModel::Serializer
  attributes :id, :date
  has_many :votes

end
