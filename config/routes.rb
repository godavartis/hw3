Rails.application.routes.draw do
  get "places/index"
  get "places/show"
  get "places/new"
  get "places/create"
  get("/", { :controller => "places", :action => "index" })

  get("/places",     { :controller => "places", :action => "index" })
  get("/places/new", { :controller => "places", :action => "new" })
  post("/places",    { :controller => "places", :action => "create" })
  get("/places/:id", { :controller => "places", :action => "show" })

  get("/entries/new", { :controller => "entries", :action => "new" })
  post("/entries",    { :controller => "entries", :action => "create" })
end