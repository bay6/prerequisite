<<<<<<< HEAD
 class Comment < ActiveRecord::Base
   attr_accessible :author, :email, :message
   belongs_to :post
 
   validates_presence_of :author,:email,:message
 
 end
=======
class Comment < ActiveRecord::Base
  attr_accessible :author, :email, :message
  belongs_to :post

  validates_presence_of :author,:email,:message

end
>>>>>>> caa13c344357ce423e89707bc404e99e390e4656
