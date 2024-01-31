class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: {minimum: 3, maximum: 30}
    validate :vaildate_username
    validates :email, presence: true, uniqueness: true, length: {minimum: 5, maximum: 255}, 
    format: {
        with: URI::MailTo::EMAIL_REGEXP
    }
    validates :first_name, presence: true
    validates :last_name, presence: true

    has_many :posts, dependent: :destroy
    has_one :profile, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_one :location, as: :locationable, dependent: :destroy

    private
    def vaildate_username
        unless username =~ /\A[a-zA-Z0-9_]+\Z/
            errors.add(:username, "can only contain letters, numbers, and underscores")
        end
    end
end
