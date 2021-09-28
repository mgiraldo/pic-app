Rails.application.routes.draw do
    root 'constituents#index'

    resources :constituents

    get 'map' => 'constituents#map'
    get 'constituents/a-z/:letter/page/:page' => 'constituents#a_z'
    get 'constituents/a-z/:letter' => 'constituents#a_z'
    get 'export' => 'constituents#export'
    match 'search' => 'constituents#search', :via => [:get, :post]

    match 'save' => 'feedback#save_spreadsheet', :via => [:get, :post]
end
