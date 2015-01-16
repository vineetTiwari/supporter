Rails.application.routes.draw do
resources "reqs"  
root "reqs#index"
end
