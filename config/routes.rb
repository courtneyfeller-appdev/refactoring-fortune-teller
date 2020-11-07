Rails.application.routes.draw do  

# Homepage
  get("/", { :controller => "lottery", :action => "lucky"})

#Lucky numbers
  get("/lottery/lucky", { :controller => "lottery", :action => "lucky"})

#Unlucky numbers
  get("/lottery/unlucky", { :controller => "lottery", :action => "unlucky"})

#Dice rolls
  get("/roll/:number_of_dice/:how_many_sides", { :controller => "dice", :action => "infinity_and_beyond" })

#Horoscopes
  get("/zodiacs/:zodiac_sign", { :controller => "zodiac", :action => "infinity_and_beyond" })


end
