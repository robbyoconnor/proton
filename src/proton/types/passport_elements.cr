# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about saved Telegram Passport elements.
  class PassportElements < Types::Base
    include JSON::Serializable

    # Telegram Passport elements
    property elements : ::Array(Proton::Types::PassportElement)

    def initialize(@elements : ::Array(Proton::Types::PassportElement))
    end
  end
end