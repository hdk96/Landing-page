class LandingPagesController < ApplicationController
  def index
  	@users = User.all
  	@user = User.new
  end

  def draw
  	@users = User.all
  	@user = User.new
  end

  def space
  	@users = User.all
  	@user = User.new
  end 
end
