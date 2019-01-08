# frozen_string_literal: true



Rails.application.routes.draw do

  resources :selection_controls
  resources :aesthetics

  resources :functions

  resources :system_controls

  resources :approvals

  resources :orders

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :users, controllers: { sessions: 'sessions',

                                    registrations: 'registrations',

                                    passwords: 'passwords' }



  unauthenticated :user do

    root to: 'pages#index', id: 'index'

  end



  devise_scope :user do

    get 'login',  to: 'sessions#new'

    get 'logout', to: 'sessions#destroy'

    get 'register', to: 'devise/registrations#new'



    authenticate :user, ->(u) { u.admin? } do

      root to: 'products#index', as: :authenticated_admin

    end

  end



  resources :products do

    member do

      get :history

    end

    member do

      get :copy

    end
    
    member do

      get :clone

    end
    get 'model_selection', on: :new

    
  end

  get 'products_export', to: 'products#export', as: 'products_export'

  resources :features



  resource :searchable, only: [] do

    collection do

      get :features

    end

  end



  root to: 'pages#index'



  mount API::Base => '/'

  mount GrapeSwaggerRails::Engine => '/apidoc'

end

