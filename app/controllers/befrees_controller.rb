class BefreesController < ApplicationController
  def index
    @post = Post.new
  end

  def create
    @post_create = Post.new(post_params)
    if @post_create.save
      flash[:success] = "おさらば〜〜〜"
      redirect_to befrees_path
    else
      flash[:error] = "※1〜140文字以下でお願いします"
      redirect_to befrees_path
    end
  end

  def update
    @post_update = Post.find(params[:id])
    if @post_update.update(post_params)
      flash[:success] = "編集完了"
      redirect_to mynegatives_path
    else
      flash[:error] = "※1〜140文字以下でお願いします"
      redirect_to mynegatives_path
    end
  end



  private
  def post_params
    params.require(:post).permit(:content)
  end
end
