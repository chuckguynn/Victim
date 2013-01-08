class VictimController < ApplicationController
  before_filter :authenticate_user!, except: [:welcome]
  def home
  end

  def welcome
  end
end
