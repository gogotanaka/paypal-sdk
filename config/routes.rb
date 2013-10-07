RubySdk::Application.routes.draw do

  resources :ts do
    get 'get_input', on: :collection
    post 'do_search', on: :collection
    get 'show', on: :collection
  end

  get "getbalance/get_input"
  get "getbalance/get_balance"
  get "getbalance/thanks"

  resources :gtd do
    get 'search', on: :collection
    post 'transaction_details', on: :collection
    get 'get_transaction_details', on: :collection
  end

  root :to => "wppro#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id(.:format)))'
end
