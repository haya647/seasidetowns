class CommentsController < ApplicationController
  def create
      @comment = Comment.new(
         topic_id: params[:comment][:topic_id],
         body: params[:comment][:body],
         picture: params[:comment][:picture] )

      if @comment.save
       redirect_to topic_path(params[:comment][:topic_id]),notice:  'コメント登録しました'
      else
       redirect_to topics_path,notice: 'コメント失敗しました'
      end
  end

  def destroy
     @comment = Comment.find(params[:id])
     @comment.destroy
     respond_to do |format|
     format.html { redirect_to topics_path, notice: 'Comment was successfully destroyed.' }
     format.json { head :no_content }
      end
  end


end
