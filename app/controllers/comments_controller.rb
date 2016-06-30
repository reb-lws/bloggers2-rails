class CommentsController < ApplicationController
  include CommentsHelper

  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id] #dont forget to assign article id to this
    
    @comment.save

    redirect_to article_path(@comment.article)
  end


end
