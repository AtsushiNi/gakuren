class NewsController < ApplicationController
  def index
    @news = News.where(visible: true)
  end
end
