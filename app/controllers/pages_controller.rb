class PagesController < ApplicationController
  access all: [:home], user: [:home], admin: :all

  def home
    @messenger = Messenger.new
    @messengers = Messenger.recent
  end
end  