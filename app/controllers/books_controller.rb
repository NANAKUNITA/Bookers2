class BooksController < ApplicationController

  def create
    @new_book=Book.new(book_params)
    @book.user_id=current_user.id
    @book.save
    redirect_to book_path(@book)
  end

  def index
    @user=current_user
    @book=Book.new
    @books=Book.all
  end

  def edit
    @book=Book.find(params[:id])
    if @book.user == current_user
      render "edit"
    else
      redirect_to books_path
    end
  end

  def show
    @book_new=Book.new
    @book=Book.find(params[:id])
    @user=@book.user
  end

  def destroy
    @book=Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  def update
    @book=Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice]="Book was successfully update."
      redirect_to book_path(@book)
    else
    render :edit
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end