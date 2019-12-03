# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Contains information about the total amount of data that was used for calls.
  class NetworkStatisticsEntry::Call < Types::NetworkStatisticsEntry
    include JSON::Serializable

    # Type of the network the data was sent through. Call setNetworkType to maintain the actual network type
    property network_type : Proton::Types::NetworkType

    # Total number of bytes sent
    property sent_bytes : ::Int64

    # Total number of bytes received
    property received_bytes : ::Int64

    # Total call duration, in seconds
    property duration : ::Float64

    def initialize(@network_type : Proton::Types::NetworkType, @sent_bytes : ::Int64, @received_bytes : ::Int64, @duration : ::Float64)
    end
  end
end