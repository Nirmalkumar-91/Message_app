class ChatroomController < ApplicationController
    before_action :require_user

    def index
        @message = Message.new
        @messages = Message.custom_method
        @user = User.all
    end
end