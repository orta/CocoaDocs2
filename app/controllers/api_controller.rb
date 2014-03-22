class ApiController < ApplicationController
  def index
    render :text => "CocoaDocs server v2"
  end

  def webhook
    Resque.enqueue(CocoaDoccer, "AFNetworking", "2.0.0")
  end
  
end
