class PictureSerializer < ActiveModel::Serializer
  attributes :title, :url, :explanation, :date

  has_one :vote
end
