#endcoding: utf-8
class Site < ActiveRecord::Base
  default_scope :conditions => ["deleted_at is null"]
    
  has_many :site_categories
  has_many :site_links
  has_many :site_channels
  has_many :site_blogs
  has_many :site_pictures
  has_many :site_comments, :order => "id desc"
  
  belongs_to :user
end