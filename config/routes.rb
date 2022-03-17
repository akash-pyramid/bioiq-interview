Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"
  get 'calculator', :to => 'calculator#index'
  post 'evaluate_expression', :to => 'calculator#evaluate_expression'
  get 'conversion', :to => 'conversion#index'
  post 'convert_to_words', :to => 'conversion#convert_to_words'
end
