Rails.application.routes.draw do
  root to: "product#index"
  get "/add-product", to: "product#add_product", as: :add_product 
  post "/add-product", to: "product#add_product_post"
  get "/edit-product/:id", to: "product#edit_product", as: :edit_product
  post "/edit-product/:id", to: "product#edit_product_post"

end
