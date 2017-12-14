Rails.application.routes.draw do
  root 'dojos#index'
  get "dojos/new" => "dojos#new"
  get "dojos/:id" => "dojos#show"
  get "dojos/:id/edit" => "dojos#edit"
  post "dojos" => "dojos#create"
  patch "dojos/:id" => "dojos#update"
  delete "dojos/:id" => "dojos#destroy"

  get "dojos/:dojo_id/students" => "students#index"
  get "dojos/:dojo_id/students/new" => "students#new", as: 'new_dojo_student'
  get "dojos/:dojo_id/students/:id" => "students#show", as: 'show_dojo_student'
  get "dojos/:dojo_id/students/:id/edit" => "students#edit", as: 'edit_dojo_student'
  post "dojos/:dojo_id/students" => "students#create"
  patch "dojos/:dojo_id/students/:id" => "students#update"
  delete "dojos/:dojo_id/students/:id" => "students#destroy", as: 'delete_dojo_student'

  end
  