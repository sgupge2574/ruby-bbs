class PostsController < ApplicationController

    def index
       @posts = Post.all
    end

    def new
        @post = Post.new
    end

    # createアクションは、newアクションで作成したフォームから送信されたデータを受け取るnewとcreateは基本セット
    def create
        # paramsは打ち込んだ情報を持っている
        @post = Post.new(post_params)
        if @post.save # saveメソッドはDBに保存するメソッド.もしもDBに保存できなかった場合はfalseを返す
            # redirect_toはURLを指定してリダイレクトするメソッド
            redirect_to posts_path
        else
            render :new
        end
    end

    private
    # post_paramsはparamsの中にあるpostの中にあるtitleとcontentを取得する
    def post_params
        # postはparamsの中にあるpostの中にあるtitleとcontentを取得する
        params.require(:post).permit(:title, :content)
    end
end
