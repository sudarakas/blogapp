class Article < ApplicationRecord
    validates :title, presence: true, length: {minimum:5, maximum:32}
    validates :description, presence: true, length: {minimum:15, maximum:1500}
end
