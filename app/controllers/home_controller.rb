class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
  	@users = User.all
  	@accounts = Account.all
  	@hierarchies = Hierarchy.all
  end
end
