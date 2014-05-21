class ContactsController < ApplicationController

  def main
  end
  
  def index
    @contacts = Contact.all
    respond_to do |f|
      f.html {render :main}
      f.xml
      f.json { render :json => @contacts, :only => [:name, :email, :number, :imgUrl]}
    end
  end

end
