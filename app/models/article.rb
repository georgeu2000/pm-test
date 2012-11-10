class Article < ActiveRecord::Base

  def thumbnail
    "/images/thumbnails/#{id}"
  end
  
end
