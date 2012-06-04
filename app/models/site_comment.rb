#endcoding: utf-8
class SiteComment < ActiveRecord::Base
  validates_presence_of :question, :on => :create, :message => "内容不能为空"
  validates_presence_of :username, :on => :create, :message => "用户名不能为空"
  validates_presence_of :phone, :on => :create, :message => "电话不能为空"    
  default_scope :conditions => ["deleted_at is null"]
    
  belongs_to :site
end