class User < ApplicationRecord
    has_many :articles
    validates  :username, presence: true, uniqueness: {case_sensitive: false}, length: {minimum:3, maximum:20}
    validates :email, presence: true, length: {minimum:3, maximum:100}, format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i}, uniqueness: {case_sensitive: false}
    has_secure_password
end
