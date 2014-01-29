Dogechain::Application.routes.draw do
  get ':api_key' => 'accounts#show'
end
