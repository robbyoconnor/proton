# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message with a poll.
  # Polls can't be sent to private or secret chats.
  # question [::String] Poll question, 1-255 characters.
  # options [::Array(::String)] List of poll answer options, 2-10 strings 1-100 characters each.
  class InputMessageContent::Poll < Types::InputMessageContent
    property question : ::String
    property options : ::Array(::String)

    def initialize(@question : ::String, @options : ::Array(::String))
    end
  end
end
