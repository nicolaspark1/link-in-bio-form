class BackdoorController < ApplicationController
  def index

    render({ :template => "backdoor_templates/list" })

  end

  def create_row
    
    i = Item.new
    i.link_url = params.fetch("link_url_param")
    i.link_description = params.fetch("link_description_param")
    i.thumbnail_url = params.fetch("thumbnail_url_param")
    i.save

    redirect_to("/")
  end
end
