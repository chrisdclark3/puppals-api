class User < ActiveRecord::Base

	attr_accessor :avatar_url, :image_file

	Paperclip::Attachment.default_options[:use_timestamp] = false

	has_many :conversations, :foreign_key => :sender_id
	has_and_belongs_to_many :dogs, join_table: :dogs_users, required: true

	validates :first_name, :last_name, :address, :email, :password_digest, presence: true
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	has_attached_file :avatar, {
		:storage => :s3,
		:bucket => 'puppalsapp',
		:region => 'us-standard',
		:convert_options => { :all => "-auto-orient" },
		:path => ":class/:attachment/:id.:extension",
	}

	validates :avatar, :attachment_presence => true
  validates_attachment_content_type :avatar, :content_type => /\Aimage/
  validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/]

	def avatar_url
		self.avatar.url
	end

end
