Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql' if Rails.env.development?

<<<<<<< HEAD
  root 'home#index'
  
  devise_for :users
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  
  post "/graphql", to: "graphql#execute"
=======
  post '/graphql', to: 'graphql#execute'
>>>>>>> c4a6a046ad3caf10aba9759e4e3262b943e418c5
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
