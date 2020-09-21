class PostsController < ApplicationController
    before_action :find_posts, only: [:show, :edit, :update]

    def index
        @posts = Post.all
    end 

    def show
    end 

    def new
        @post = Post.new
    end 

    def create
        @post = Post.create(post_params)
        redirect_to post_path(@post)
    end 

    def edit

    end 

    def update
        @post = Post.update(post_params)
        redirect_to post_path(@post)
    end 

    private 

    def post_params
        params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
    end

    def find_posts
        @post = Post.find(params[:id])
    end  


end
