class User < ActiveRecord::Base
    has_secure_password
    validates :password, presence: true, confirmation: true, length: { minimum: 8 }
    validates :name, presence: true
    validates :email, presence: true, uniqueness: { case_sensitive: false }
    validates :quantity, presence: true
    validates :category, presence: true
end
