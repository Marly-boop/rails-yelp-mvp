class Restaurant < ApplicationRecord
    CATEGORY = %w{chinese italian japanese french belgian}
    has_many :reviews, dependent: :destroy
    validates :name, presence: true, allow_blank: false
    validates :address, presence: true, allow_blank: false
    validates :category, presence: true, inclusion: {in: CATEGORY}
end
