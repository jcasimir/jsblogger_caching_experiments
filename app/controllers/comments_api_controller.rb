class CommentsApiController < ApplicationController
  def count
    render :json => {:count => Comment.count,
                     :first => Comment.first
                    }.to_json
  end
end