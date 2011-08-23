class SiteChannel < ActiveRecord::Base
  default_scope :conditions => ["deleted_at is null"]
    
  belongs_to :site
  belongs_to :editor, :class_name => "User", :foreign_key => "editor_id"
  has_many :site_channel_modules, :order => "position ASC"
  has_many :site_pictures, :order => "id desc"
end