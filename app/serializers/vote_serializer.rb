class VoteSerializer < ActiveModel::Serializer
  attributes :picture_id, :count

  belongs_to :picture
end
