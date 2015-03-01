class ControlController < ApplicationController
  def index
  end

  def command
    params(:command)
  end
end
