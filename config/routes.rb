Rails.application.routes.draw do
  # Routes for the Receipt_line resource:
  # CREATE
  get "/receipt_lines/new", :controller => "receipt_lines", :action => "new"
  post "/create_receipt_line", :controller => "receipt_lines", :action => "create"

  # READ
  get "/receipt_lines", :controller => "receipt_lines", :action => "index"
  get "/receipt_lines/:id", :controller => "receipt_lines", :action => "show"

  # UPDATE
  get "/receipt_lines/:id/edit", :controller => "receipt_lines", :action => "edit"
  post "/update_receipt_line/:id", :controller => "receipt_lines", :action => "update"

  # DELETE
  get "/delete_receipt_line/:id", :controller => "receipt_lines", :action => "destroy"
  #------------------------------

  # Routes for the Attendance resource:
  # CREATE
  get "/attendances/new", :controller => "attendances", :action => "new"
  post "/create_attendance", :controller => "attendances", :action => "create"

  # READ
  get "/attendances", :controller => "attendances", :action => "index"
  get "/attendances/:id", :controller => "attendances", :action => "show"

  # UPDATE
  get "/attendances/:id/edit", :controller => "attendances", :action => "edit"
  post "/update_attendance/:id", :controller => "attendances", :action => "update"

  # DELETE
  get "/delete_attendance/:id", :controller => "attendances", :action => "destroy"
  #------------------------------

  # Routes for the Receipt resource:
  # CREATE
  get "/receipts/new", :controller => "receipts", :action => "new"
  post "/create_receipt", :controller => "receipts", :action => "create"

  # READ
  get "/receipts", :controller => "receipts", :action => "index"
  get "/receipts/:id", :controller => "receipts", :action => "show"

  # UPDATE
  get "/receipts/:id/edit", :controller => "receipts", :action => "edit"
  post "/update_receipt/:id", :controller => "receipts", :action => "update"

  # DELETE
  get "/delete_receipt/:id", :controller => "receipts", :action => "destroy"
  #------------------------------

  # Routes for the Event resource:
  # CREATE
  get "/events/new", :controller => "events", :action => "new"
  post "/create_event", :controller => "events", :action => "create"

  # READ
  get "/events", :controller => "events", :action => "index"
  get "/events/:id", :controller => "events", :action => "show"

  # UPDATE
  get "/events/:id/edit", :controller => "events", :action => "edit"
  post "/update_event/:id", :controller => "events", :action => "update"

  # DELETE
  get "/delete_event/:id", :controller => "events", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
