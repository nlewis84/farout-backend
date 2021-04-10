class Picture < ApplicationRecord
    has_one :vote
    validates :title, :url, :description, :date, presence: true
end
