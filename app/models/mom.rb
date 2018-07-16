class Mom < ApplicationRecord
    has_many :kids, dependent: :destroy
end
