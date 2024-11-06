Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })

  get("/backdoor", { :controller => "backdoor", :action => "index" })

  post("/insert_item", { :controller => "backdoor", :action => "create_row"})
end
