class Comment < ActiveRecord::Base
  attr_accessible :author, :email, :message
  belongs_to :post

  validates_presence_of :author,:email,:message

end
