App.cahtroom = App.cable.subscriptions.create "CahtroomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#message-container').append data.msg_modified
    scroll_bottom();
    
