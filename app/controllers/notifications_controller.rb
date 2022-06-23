class NotificationsController < ApplicationController
  def index
    @notifications=Notification.all
  end

  def new
    @notification=Notification.new
  end
end
