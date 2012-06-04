#endcoding: utf-8
class BlogsController < ApplicationController
  def index
    @nav = "blogs"
  	params[:page] ||= 1
  	params[:per_page] ||= 10
    ops = {:page => params[:page], :per_page => params[:per_page]}

    @categories = @site.site_categories  	
    @blogs = SiteBlog.order("id desc").paginate(ops)
    
  	@page_title = "山寨动态"
  	@page_description = "山寨动态"
  	@page_keywords = "山寨动态"    
  end
  
  def category
    @nav = "blogs"    
  	params[:page] ||= 1
  	params[:per_page] ||= 10
    ops = {:page => params[:page], :per_page => params[:per_page]}
    
    @categories = @site.site_categories
    @category = SiteCategory.find(params[:id])
    @blogs = @category.site_blogs.paginate(ops)

  	@page_title = "山寨动态－#{@category.name}"
  	@page_description = "山寨动态－#{@category.name}"
  	@page_keywords = ["山寨动态",@category.name]
  	
    render :action => "index"
  end

  def show
    @nav = "blogs"    
    @categories = @site.site_categories   
    @blog = SiteBlog.find(params[:id])
    @category = @blog.site_category 
    
  	@page_title = @blog.title
  	@page_description = @blog.brief
  	@page_keywords = @blog.title
  end

end