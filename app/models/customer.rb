require 'digest'
class Customer < ActiveRecord::Base
  #acts_as_reportable

  #virtual attribute
  attr_accessor :password

  #makes the attributes :name, and email of the DB available using ruby
  attr_accessible :name, :email, :address, :city, :c_state, :zipcode , :password, :password_confirmation

  EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  #checks to see if the :name/:email is actually not nil
  validates_presence_of :name, :email, :address, :city, :c_state, :zipcode

  #ensures the string length of name is less than or equal to 50
  validates_length_of   :name, :maximum => 50

  #ensures the format of an email
  validates_format_of   :email, :with => EmailRegex
  #ensures no two e-mails are the same; not case sensitive
  validates_uniqueness_of :email, :case_sensitive => false

  # Automatically create the virtual attribute 'password_confirmation'.
  validates_confirmation_of :password #rejects user if password = password_confrimation

  # Password validations.
  validates_presence_of :password
  validates_length_of   :password, :within => 6..40

  #creates encrypt_password before it is saved
  before_save :encrypt_password

  # Return true if the user's password matches the submitted password.
  def has_password?(submitted_password)
    # Compare encrypted_password with the encrypted version of
    # submitted_password.
    encrypted_password == encrypt(submitted_password)
  end

  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil  if user.nil?
    return user if user.has_password?(submitted_password)
  end

  private
    #before save calls this method to encrypt the password
    def encrypt_password
      self.salt = make_salt
      self.encrypted_password = encrypt(password)
    end

    def encrypt(string)
      secure_hash("#{salt}#{string}")
    end

    def make_salt
      secure_hash("#{Time.now.utc}#{password}")
    end

    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end
end
