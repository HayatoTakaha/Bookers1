class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  def create
     @book = Book.new(books_params)
    if @book.save
       # 3. フラッシュメッセージを定義し、詳細画面へリダイレクト
      flash[:notice] = "投稿に成功しました。"
      redirect_to books_path(@book.id)
    else
      flash.now[:alert] = "投稿に失敗しました。" #キーをalertに変更
      render :new
    end
  end
  
  def index
    @book = Book.all 
  end

  def show
    @book = Book.find(params[:id])
  end
  
  def edit
     @book = Book.find(params[:id])
  end  
  
  def update
    @book = Book.find(params[:id])
    @book.update(books_params)
    redirect_to books_path(@book.id)
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private

  def books_params
    params.require(:book).permit(:title, :body)
  end
end