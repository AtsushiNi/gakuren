class TopController < ApplicationController
  def home
    @news = News.find([1, 2, 3, 4])
  end
end
