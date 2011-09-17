Nanicollection::Application.routes.draw do
  match 'gacha/' => 'gacha#index'
  match 'gacha/draw' => 'gacha#draw'
end
