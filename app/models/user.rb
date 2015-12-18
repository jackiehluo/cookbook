class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  has_many :recipes

  field :username, type: String
  field :password_digest, type: String

  has_secure_password
  validates_presence_of :username, :password
  validates :username, :uniqueness => true
  validates :password, :length => {
    :minimum => 6,
    :maximum => 20,
    :too_short => "Passwords must be at least %{count} characters.",
    :too_long => "Passwords must be at most %{count} characters."
  }
end
