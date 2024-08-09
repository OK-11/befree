class MynegativesController < ApplicationController
  before_action :set_id , only:[:edit,:destroy]
  def index
    @post = Post.all
  end

  def edit
  end

  def destroy
    @post_set.destroy
    redirect_to mynegatives_path
  end




  private
  def set_id
    @post_set = Post.find(params[:id])
  end

end
