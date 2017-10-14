defmodule {{MODULE_NAME}}.Commands do
  use {{MODULE_NAME}}.Router
  use {{MODULE_NAME}}.Proxy

  alias {{MODULE_NAME}}.Commands.Separate

  # You can create commands in the format `/command` by
  # using the macro `command "command"`.
  command ["hello", "hi"] do
    # You can use almost any function from the Nadia core without
    # having to specify the current chat ID as you can see below.
    # For example, `Nadia.send_message/3` takes as first argument
    # the ID of the chat you want to send this message. Using the
    # macro `send_message/2` defined at {{MODULE_NAME}}.Proxy, it is
    # injected the proper ID at the function. Go take a look.
    #
    # See also: https://hexdocs.pm/nadia/Nadia.html
    send_message "Hello from Telegram template!"
  end

  # The `message` macro must come at the end since it matches anything.
  # You may use it as a fallback.
  message do
    send_message "Sorry, I couldn't understand you"
  end
end
