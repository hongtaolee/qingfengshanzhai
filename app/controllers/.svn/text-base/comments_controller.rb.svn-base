class CommentsController < ApplicationController
  def index
    @comments = @site.site_comments
    @site_comment = SiteComment.new
    
  	@page_title = "游客留言"
  	@page_description = "游客留言"
  	@page_keywords = "游客留言" 
  end

  def create
    @site_comment = @site.site_comments.build(params[:site_comment])
    if @site_comment.save
      flash[:notice] = "留言成功"
    else
      flash[:error] = @site_comment.errors
    end
    @comments = @site.site_comments    
    redirect_to :controller => "comments", :action => "index"
  end


end
