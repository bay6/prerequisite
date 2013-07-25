class Post < ActiveRecord::Base
  attr_accessible :body, :cover, :title
  has_many :comments, :dependent => :destroy;
  validates_uniqueness_of :title
  mount_uploader :cover,CoverUploader
end
