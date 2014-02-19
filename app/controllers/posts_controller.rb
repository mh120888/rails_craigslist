class PostsController < ActionController::Base
  def index
    @category = Category.find(params[:category_id])
    @posts = @category.posts
  end

  def show
    @category = Category.find(params[:category_id])
    @post = Post.find(params[:id])
  end

  def new
    @category = Category.find(params[:category_id])
    @post = Post.new
  end

  def edit
    @category = Category.find(params[:category_id])
    @post = Post.find(params[:id])
  end

  def create
    @category = Category.find(params[:category_id])
    @post = @category.posts.build params[:post]
    if @post.save
      redirect_to category_path(@category)
    else
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to category_post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to category_path(params[:category_id])
  end

end