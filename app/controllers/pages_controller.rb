class PagesController < ApplicationController
  access user: [:home], admin: :all

  def home
    @messenger = Messenger.new
    @messengers = Messenger.recent
  end
end  