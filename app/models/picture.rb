class Picture < ApplicationRecord
    has_one :vote
    validates :title, :url, :explanation, :date, presence: true

    scope :top, -> { select("*").joins(:vote).order("count DESC") }
    scope :newest, -> { select("*").joins(:vote).order("date DESC")}
end
