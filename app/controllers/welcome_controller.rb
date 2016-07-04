class WelcomeController < ApplicationController

  def index
    render html: "<h4>Hello.</h4><p>Plz downsload se app insteads".html_safe
  end

  def registered
    render html: "<h3>Welcomes to Hjälp.</h3><p> You's now bekräftad and ready to finds, and votes on, restaurants.<p> Open se app and vote away!".html_safe
  end

end
