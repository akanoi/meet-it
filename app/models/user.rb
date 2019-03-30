require_relative '../../config/constants'

class User < ApplicationRecord
  include Constants

  has_many :event_users
  has_many :events, through: :event_users
  has_and_belongs_to_many :interests

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: MAX_NAME_LENGTH }
  validates :email, presence: true, length: { maximum: NAX_EMAIL_LENGTH },
            format: { with: Regexp.new(VALID_EMAIL_DOMAINS.map { |domain| format("\\A[\\w+\\-.]+@%s\\z", Regexp.escape(domain)) }.join('|')) }
end
