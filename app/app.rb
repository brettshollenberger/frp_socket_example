require "sinatra/base"

module FRP
  class App < Sinatra::Base
    get "/" do
      erb :"index.html"
    end

    get "/assets/js/application.js" do
      content_type :js
      @scheme = "ws://"
      erb :"application.js"
    end
  end
end
