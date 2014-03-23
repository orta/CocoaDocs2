class ApiController < ApplicationController
  def index
    render :text => "CocoaDocs server v2"
  end

  def webhook
    Resque.enqueue(CocoaDoccer, "AFNetworking", "2.0.0")
    render json: { doing_it: "Yes" } 
  end
  
  def error
    render json: { error: "Yes" } 
  end
  
  def reparse
    Resque.enqueue(CocoaDoccer, "AFNetworking", "2.0.0")
    render :text => "started"
  end
  
end
