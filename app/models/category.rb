class Category < ApplicationRecord
    validates :name, presence: true, length: { minimum: 10, to_short: "%{count} is to short. Please enter name > 10 characters" }
    validates :quality, numericality: { only_integer: true }
end
