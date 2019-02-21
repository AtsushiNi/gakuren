class NewsController < ApplicationController
  def index
    @news = News.where(visible: true)
  end

  def new
    @each_news = News.new
  end

  def create
    @each_news = News.create(news_params)
    if @each_news.save
      flash[:success] = "New news was created!"
      redirect_to news_index_path
    else
      flash.now[:danger] = "Failed to create a news!!"
      render new_news_path
    end
  end

  def destroy
    @each_news = News.find(params[:id])
    @each_news.update_attributes(visible: false)
    if @each_news
      flash[:success] = "A news was deleted!"
    else
      flash[:danger] = "Failed to delete a news"
    end
    redirect_to news_index_path
  end

  private

  def fileupload_params
    params.require(:news).permit({pdfs: []})
  end

  def news_params
    params.require(:news).permit(:title, {pdfs: []})
  end
end
