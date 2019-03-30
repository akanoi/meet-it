require_relative '../../config/constants'

class User < ApplicationRecord
  include Constants

  validates :name, presence: true, length: { maximum: MAX_NAME_LENGTH }
  validates :email, presence: true, length: { maximum: NAX_EMAIL_LENGTH },
            format: { with: Regexp.new(VALID_EMAIL_DOMAINS.map { |domain| format("\\A[\\w+\\-.]+@%s\\z", Regexp.escape(domain)) }.join('|')) }

  def valid_domains_regexp
  end
end
