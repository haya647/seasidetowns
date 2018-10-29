class Comment04sController < ApplicationController
  def create
      @comment = Comment04.new(
         topic04_id: params[:comment04][:topic04_id],
         body: params[:comment04][:body],
         picture: params[:comment04][:picture] )

      if @comment.save
       redirect_to topic04_path(params[:comment04][:topic04_id]),notice:  'コメント登録しました'
      else
       redirect_to topic04s_path,notice: 'コメント失敗しました'
      end
  end

  def destroy
     @comment = Comment04.find(params[:id])
     @comment.destroy
     respond_to do |format|
     format.html { redirect_to topic04s_path, notice: 'Comment was successfully destroyed.' }
     format.json { head :no_content }
      end
  end


end
