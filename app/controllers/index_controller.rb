#endcoding: utf-8
class IndexController < ApplicationController
  
  def index
    @nav = "index"
    @blogs = SiteBlog.order("id desc").limit(4)
    @pictures = SiteChannel.find(1).site_pictures.order("id desc").limit(4)
  	@page_title = "首页"
  	@page_description = "清风山寨位于西安蓝田汤峪，环境优美，自然和谐，这里空气清新,山寨里面设有各种拓展娱乐，集浪漫休闲，拓展训练于一体。西安农家乐-清风山寨，欢迎您的到来。电话：13289844508。"
  	@page_keywords = "西安农家乐"  
  end
  
  def yl
    @nav = 'yl'
    @channel = SiteChannel.find(1)
    
  	@page_title = "娱乐项目"
  	@page_description = "娱乐项目"
  	@page_keywords = "娱乐项目"    
  end
  
  def ms
    @nav = 'ms'
    @channel = SiteChannel.find(2)

  	@page_title = "特色美食"
  	@page_description = "特色美食"
  	@page_keywords = "特色美食"
  	    
    render :action => "yl"
  end
  
  def zb
    @nav = 'zb'
    @channel = SiteChannel.find(3)

  	@page_title = "周边风景"
  	@page_description = "周边风景"
  	@page_keywords = "周边风景"    
  end
  
  def video
    @nav = 'video'
    
    @page_title = "视频"
  	@page_description = "视频"
  	@page_keywords = "视频"
  end
  
end
