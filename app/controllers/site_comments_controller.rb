#endcoding: utf-8
class SiteCommentsController < ApplicationController

  def create
    @site_comment = @site.site_comments.build(params[:site_comment])
    if @site_comment.save
      flash[:notice] = "留言成功"
    else
      flash[:error] = @site_comment.errors.map{|arg,msg| msg}
    end
    redirect_to :controller => "comments", :action => "index"
  end

end
