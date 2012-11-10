class Article < ActiveRecord::Base

  def thumbnail
    "/images/thumbnails/#{id}.png"
  end

end
