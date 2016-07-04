class MessageSerializer < ActiveModel::Serializer
  attributes :id, :userId, :createdAt, :text

  def userId
    object.user_id
  end

  def createdAt
    object.created_at
  end

end
