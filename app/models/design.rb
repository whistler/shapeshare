class Design < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: {minimum: 4, maximum: 160}
  validates :description, presence: true
  validates :file, presence: true

  attr_accessible :title, :description, :file

  mount_uploader :file, DesignUploader

  acts_as_indexed :fields => [:title, :description]
end
