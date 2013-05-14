Browsercaching::Application.routes.draw do
  resources :contacts
  match 'timestamp' => "Application#timestamp"
  root :to => 'contacts#index'
end
