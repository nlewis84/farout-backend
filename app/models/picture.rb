class Picture < ApplicationRecord
    has_one :vote
    validates :title, :url, :explanation, :date, presence: true

    scope :top, -> { joins(:vote).group("pictures.id").order("count DESC") }
end
