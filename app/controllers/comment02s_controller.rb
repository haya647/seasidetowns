class Comment02sController < ApplicationController
  def create
      @comment = Comment02.new(
         topic02_id: params[:comment02][:topic02_id],
         body: params[:comment02][:body],
         picture: params[:comment02][:picture] )

      if @comment.save
       redirect_to topic02_path(params[:comment02][:topic02_id]),notice:  'コメント登録しました'
      else
       redirect_to topic02s_path,notice: 'コメント失敗しました'
      end
  end

  def destroy
     @comment = Comment02.find(params[:id])
     @comment.destroy
     respond_to do |format|
     format.html { redirect_to topic02s_path, notice: 'Comment was successfully destroyed.' }
     format.json { head :no_content }
      end
  end
end
