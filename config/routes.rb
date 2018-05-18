Rails.application.routes.draw do
  post 'logger/log'

  get 'logger/logs_by_wp_id'

  get 'logger/logs_by_address'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
