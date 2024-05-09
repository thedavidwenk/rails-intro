class PagesController < ApplicationController
  def about 
  end

  def contact
    @members = ["claire", "tony", "david", "pookie"]

    search = params[:member] # what you write into the form

    if search
      @members = @members.select do |member|
        member == search.downcase
      end
    end 
  end

  def home
  end
end
