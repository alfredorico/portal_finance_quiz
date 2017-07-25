Rails.application.routes.draw do
  namespace :v1 do
    resources :questions, only: [:index, :show], defaults: { format: :json } do
      get :with_choices, on: :member
    end
    resources :full_questions_listing, only: :create
  end
end
