class CommentsController < ApplicationController
  def create
    redirect_to "/tweets/#{@comment.tweet.id}"
  end

  private
  def comment_params
    params.permit(:text, :tweet_id)
  end
end
