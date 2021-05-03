class Picture < ApplicationRecord
    has_one :vote
    validates :title, :url, :explanation, :date, presence: true

    scope :top, -> { select(:id)joins(:vote).group(:id).order("count DESC") }
    scope :newest, -> { order("date DESC")}
end
