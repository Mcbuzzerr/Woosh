class PagesController < ApplicationController
  def home
    @messenger = Messenger.new
    @messengers = Messenger.all
  end
end  