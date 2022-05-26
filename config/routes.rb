Rails.application.routes.draw do

  get 'posts/top', to: 'posts#top', as: 'post_top'
  


  
  get   'categorys/new', to: 'categorys#new', as: 'category_new'
  post  'categorys/create', to: 'categorys#create', as: 'category_create'
  get   'categorys/show'
  
  
  root 'pages#top'
  
  get  'signup',       to: 'users#new',    as: 'signup'
  post 'users/create', to: 'users#create', as: 'user_create'
 
  get  'login',           to: 'sessions#new',    as: 'login'
  post 'sessions/create', to: 'sessions#create', as: 'login_create'
  
  delete 'logout',   to: 'sessions#destroy', as: 'logout'
  
  get  'users/show', to: 'users#show', as: 'user_show'
  
  get  'questions',        to: 'questions#index',  as: 'questions'
  get  'questions/new',    to: 'questions#new',    as: 'new_question'
  post 'questions/create', to: 'questions#create', as: 'create_question'
  get  'questions/:id',    to: 'questions#show',   as: 'question'
  
  get  'answers/new',                 to: 'answers#new',    as: 'answer_new'
  post ':question_id/answers/create', to: 'answers#create', as: 'answer_create'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
