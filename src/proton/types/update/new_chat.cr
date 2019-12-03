# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A new chat has been loaded/created.
  # This update is guaranteed to come before the chat identifier is returned to the client.
  # The chat field changes will be reported through separate updates.
  class Update::NewChat < Types::Update
    include JSON::Serializable

    # The chat
    property chat : Proton::Types::Chat

    def initialize(@chat : Proton::Types::Chat)
    end
  end
end