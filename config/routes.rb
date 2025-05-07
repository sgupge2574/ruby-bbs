Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check


# localhost:3000/posts
# []はコントローラをつける.indexはlocalhost:3000/posts、その他はlocalhost:3000/posts/＊＊＊
   resources :posts, only: [:index, :new, :create]  


end
