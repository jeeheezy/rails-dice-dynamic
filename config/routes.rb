Rails.application.routes.draw do
  get("/", { :controller => "pages", :action => "home" })
  get("/dice/:number_of_dice/:number_of_sides", { :controller => "pages", :action => "dice_page"})
end
