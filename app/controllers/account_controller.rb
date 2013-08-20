class AccountController < ApplicationController
  def index
    @communities = Community.order(:name)
  end
end
