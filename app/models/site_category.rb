class SiteCategory < ActiveRecord::Base
  default_scope :conditions => ["deleted_at is null"]
    
  belongs_to :site
  belongs_to :editor, :class_name => "User", :foreign_key => "editor_id"  
  
  has_many :site_blogs
end