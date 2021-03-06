#endcoding: utf-8
class SiteChannelModule < ActiveRecord::Base
  default_scope :conditions => ["deleted_at is null"]
    
  belongs_to :site
  belongs_to :site_channel
  belongs_to :editor, :class_name => "User", :foreign_key => "editor_id"
end