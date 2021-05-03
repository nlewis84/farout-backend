class Picture < ApplicationRecord
    has_one :vote
    validates :title, :url, :explanation, :date, presence: true

    scope :top, -> { joins(:votes).group(:id).order("count DESC") }
    scope :newest, -> { order("date DESC")}
end
