Rails.application.routes.draw do
  devise_for :users
  root 'contents#index'
  resources :contents do
    get   'contents/judge'  =>  'contents#judge'
    resources :reviews, only: [:new, :create]
  end
  resources :characters, only: [:index,:new,:create]
  get   'contents/correct'  =>  'contents#correct'
  get   'contents/incorrect'  =>  'contents#incorrect'
end
