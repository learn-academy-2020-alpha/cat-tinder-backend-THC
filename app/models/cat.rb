class Cat < ApplicationRecord
    validates :name, :age, :hobby, presence: true
    validates_length_of :hobby, minimum: 10
end
