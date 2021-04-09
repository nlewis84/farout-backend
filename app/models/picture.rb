class Picture < ApplicationRecord
    has_many :likes
    validates :title, :url, :description, :date, presence: true
end
