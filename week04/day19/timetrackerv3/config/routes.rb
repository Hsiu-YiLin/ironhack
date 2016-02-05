Rails.application.routes.draw do
  get "/" => "site#home"

  resources(:projects, only: [:destroy, :show, :new, :create, :index]) do
    resources :entries, only: [:destroy, :index, :new, :create, :edit, :update]
  end
end

