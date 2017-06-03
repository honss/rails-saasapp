Rails.application.routes.draw do
  root to: "pages#home"
  get 'about', to:'pages#about'
  resources 'contacts', only: :create
  resources 'bugs', only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
  get 'bug-report', to:'bugs#new', as:'new_bug'
end
