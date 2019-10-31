# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A new high score was achieved in a game.
  # game_message_id [::Int64] Identifier of the message with the game, can be an identifier of a deleted message.
  # game_id [::Int64] Identifier of the game; may be different from the games presented in the message with the game.
  # score [::Int32] New score.
  class MessageContent::GameScore < Types::MessageContent
    property game_message_id : ::Int64
    property game_id : ::Int64
    property score : ::Int32

    def initialize(@game_message_id : ::Int64, @game_id : ::Int64, @score : ::Int32)
    end
  end
end
