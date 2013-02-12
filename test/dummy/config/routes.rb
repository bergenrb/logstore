Rails.application.routes.draw do
  mount Logstore::Engine => "/logstore"
end
