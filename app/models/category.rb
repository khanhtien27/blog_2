class Category < ApplicationRecord
    validates :name, presence: true, length: { minximum: 10, to_short: "#{:name} is to short. Please enter name > 10 characters" }
    validates :quality, numericality: { only_integer: true }
end
