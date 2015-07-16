class Dog < ActiveRecord::Base

	attr_accessor :avatar_url, :image_file

	Paperclip::Attachment.default_options[:use_timestamp] = false

  has_and_belongs_to_many :users, join_table: :dogs_users, required: true

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
