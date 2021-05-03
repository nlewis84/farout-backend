class Picture < ApplicationRecord
    has_one :vote
    validates :title, :url, :explanation, :date, presence: true

    scope :top, -> { joins(:vote).order("count DESC").limit(5) }
    scope :newest, -> { order("date DESC")}
end
