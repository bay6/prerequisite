class Post < ActiveRecord::Base
<<<<<<< HEAD
   attr_accessible :body, :cover, :title
   has_many :comments, :dependent => :destroy;
   validates_uniqueness_of :title
   mount_uploader :cover,CoverUploader
 end
=======
  attr_accessible :body, :cover, :title
  has_many :comments, :dependent => :destroy;
  validates_uniqueness_of :title
  mount_uploader :cover,CoverUploader
end
>>>>>>> caa13c344357ce423e89707bc404e99e390e4656
