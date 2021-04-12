class Picture < ApplicationRecord
    has_one :vote
    validates :title, :url, :explanation, :date, presence: true
end
