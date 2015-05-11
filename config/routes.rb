Rails.application.routes.draw do
  get("/",        { :controller => "fortunes", :action => "lucky" })

  get("/lucky_numbers",   { :controller => "fortunes", :action => "lucky" })
  get("/unlucky_numbers", { :controller => "fortunes", :action => "unlucky" })

  get("/random/:the_first_number/:the_second_number",   { :controller => "random", :action => "random_order" })
  # creating name of hash. takes out component after : and puts into hash


  # VARIABLE ROUTES
  # =======================

  get("/signs/:the_sign",         { :controller => "zodiacs", :action => "sign" })
  get("/creatures/:the_creature", { :controller => "zodiacs", :action => "creature" })

  get("/zodiacs/new", { :controller => "zodiacs", :action => "new_form"})
  get("/create_zodiac", {:controller => "zodiacs", :action => "create_row"})

  get("/zodiacs/:the_number", { :controller => "zodiacs", :action => "the_number" })
# receive whatever the fortune is with that id "the_number"
get("/zodiacs", { :controller => "zodiacs", :action => "index"})

get("/delete/:the_id", {:controller => "zodiacs", :action => "destroy"})

end
