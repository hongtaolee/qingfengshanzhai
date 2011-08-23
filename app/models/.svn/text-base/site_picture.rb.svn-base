class SitePicture < ActiveRecord::Base
  default_scope :conditions => ["deleted_at is null"]
    
  belongs_to :site
  belongs_to :editor, :class_name => "User", :foreign_key => "editor_id"
  belongs_to :site_channel

  has_attached_file :pic, 
    :processors => [:watermark],
    :styles => { :original => '800x600>',
                 :small => '60x48',      
                 :medium => '80x60',
                 :big => '500x320' },
                 :url => "/assets/:class/:attachment/:style/:id.:extension",
                 :path => ":rails_root/public/assets/:class/:attachment/:style/:id.:extension",
                 :default_url => "/images/default/:class/:attachment/:style.png"  

  attr_protected :pic_file_name, :pic_content_type, :pic_size

  validates_attachment_content_type :pic, :content_type => ['image/jpeg', 'image/png', 'image/pjpeg', 'image/x-png', 'image/gif'], :message => "文件格式错误，请上传jpg、png、gif格式图片"
  validates_attachment_size :pic, :less_than => 10.megabytes, :message => "图片太大，最大支持10M"  
end