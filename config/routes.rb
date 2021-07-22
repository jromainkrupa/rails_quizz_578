Rails.application.routes.draw do
  resources :songs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


# Index => "/songs" GET
# show => "/songs/:id" GET
# new => "/songs/new" GET
# create => "/songs" POST
# edit => "/songs/:id/edit" GET  
# update => "/songs/:id" PATCH || PUT
# delete => "/songs/:id"