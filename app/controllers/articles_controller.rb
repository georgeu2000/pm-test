class ArticlesController < ApplicationController
  
  def get
    @articles = Article.all
    render layout: false
  end

end