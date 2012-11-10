FactoryGirl.define do
  
  factory :article do
    name 'The article name'
    link 'www.example.com/article_link'
  end

  factory :article2, class: Article do
    name '2nd article'
    link 'www.example.com/article_link_2'
  end

end
