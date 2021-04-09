class Like < ApplicationRecord
    belongs_to :picture
    validates :picture_id, :count, presence: true
end
