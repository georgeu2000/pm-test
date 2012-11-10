class ArticlesController < ApplicationController
  
  def get
    @articles = Article.all
  end

end