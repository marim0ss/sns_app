class LikesController < ApplicationController


  # いいねのデータを作成
  def create
    @like = Like.new(
      user_id: current_user.id,
      post_id: params[:post_id]
    ) # ルートからURLに含まれるpost_idを取得する
    @like.save
    redirect_to post_path(params[:post_id])
      # redirect_to("/posts/#{params[:post_id]}") # 投稿詳細ページへ
  end


  def destroy
    # 削除したいデータの特定
    like = Like.find_by(
      user_id: current_user.id,
      post_id: params[:post_id]
    )
    like.destroy
    redirect_to post_path(params[:post_id])
  end
end
