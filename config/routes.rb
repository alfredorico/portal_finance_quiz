Rails.application.routes.draw do
  namespace :v1 do
    # Mainly resources

    resources :quiz, only: [:create, :show] do
      get :grading, on: :member
      resources :quiz_reply, only: [:update, :show]
    end

    # Aditional resources for listing an exam
    resources :questions, only: [:index], defaults: { format: :json } do
      get :with_choices, on: :member
      get :with_correctly_answered_choices, on: :member
    end
  end
end
