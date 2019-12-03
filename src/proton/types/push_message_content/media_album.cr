# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A media album.
  class PushMessageContent::MediaAlbum < Types::PushMessageContent
    include JSON::Serializable

    # Number of messages in the album
    property total_count : ::Int32

    # True, if the album has at least one photo
    property has_photos : ::Bool

    # True, if the album has at least one video
    property has_videos : ::Bool

    def initialize(@total_count : ::Int32, @has_photos : ::Bool, @has_videos : ::Bool)
    end
  end
end