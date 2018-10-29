class Comment03sController < ApplicationController
  def create
      @comment = Comment03.new(
         topic03_id: params[:comment03][:topic03_id],
         body: params[:comment03][:body],
         picture: params[:comment03][:picture] )

      if @comment.save
       redirect_to topic03_path(params[:comment03][:topic03_id]),notice:  'コメント登録しました'
      else
       redirect_to topic03s_path,notice: 'コメント失敗しました'
      end
  end

  def destroy
     @comment = Comment03.find(params[:id])
     @comment.destroy
     respond_to do |format|
     format.html { redirect_to topic03s_path, notice: 'Comment was successfully destroyed.' }
     format.json { head :no_content }
      end
  end

end
