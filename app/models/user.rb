#endcoding: utf-8
class User < ActiveRecord::Base
  has_one :site
end