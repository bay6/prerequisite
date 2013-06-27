class Post < ActiveRecord::Base
  has_many :comments, :dependent => :destroy;
  validates_uniqueness_of :title                         
  validates_presence_of :title, :content, :user
  has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_attached_file :attach
end
