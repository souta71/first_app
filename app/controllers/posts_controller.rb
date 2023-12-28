class PostsController < ApplicationController
  def index  # indexアクションを定義した
    @posts = Post.all  # すべてのレコードを@postsに代入  # "これはコントローラーで定義したインスタンス変数を確認するための文字列です"
  end

  def new
  end

  def create
    Post.create(content: params[:content])
    redirect_to "/posts"
  end
end
