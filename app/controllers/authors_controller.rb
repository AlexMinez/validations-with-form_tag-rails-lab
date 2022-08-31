class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def edit
    @author = Author.find(params[:id])
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
    redirect_to author_path(@author)
    else
      render :new
    end
  end
def update
    @post.update(author_params)
    if @post.valid?
      @post.update(author_params)
        redirect_to post_path(@post)
    else
      render :edit
    end
  end
  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
