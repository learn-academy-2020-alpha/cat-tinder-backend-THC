class Cat < ApplicationRecord
    validates :name, :age, :hobby, presence: true
    validates :hobby, length: { minimum: 10 }
end
