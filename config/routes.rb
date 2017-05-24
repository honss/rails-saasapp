Rails.application.routes.draw do
  root to: "pages#home"
  get 'about', to:'pages#about'
  resources 'contacts'
  resources 'bugs'
  get 'contact-us', to: 'contacts#new'
  get 'bug-report', to:'bugs#new'
end
