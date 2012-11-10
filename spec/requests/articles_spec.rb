require 'spec_helper'

describe 'Articles' do
  let!( :article  ) { FactoryGirl.create :article }
  let!( :article2 ) { FactoryGirl.create :article2 }

  before do
    visit articles_path
  end

  it 'gets articles' do
    page.should have_css '#articles_container'
  end

  it 'gets article name' do
    within 'span.name' do
      page.should have_content article.name
    end
  end

  it 'gets article thumbnail' do
    within '.one_article' do
      page.should have_selector "img[src$='#{article.thumbnail}']"
      page.should have_selector "img[class$='thumbnail']"
    end
  end

  it 'gets article link' do
    within 'span.name' do
      page.should have_selector "a[href$='#{article.link}']"
      page.should have_selector "a[class$='link']"
    end
  end

  it 'gets multiple articles' do
    page.should have_content article.name
    page.should have_content article2.name
  end
  
end