class AccountController < ApplicationController
  before_filter :authenticate_user!
  def key
    render 'account/key'
  end
end
