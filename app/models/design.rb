class Design < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: {minimum: 4, maximum: 160}
  validates :description, presence: true
  validates :file, presence: true

  mount_uploader :file, DesignUploader

  searchable do 
    text :title, :description
  end
end
