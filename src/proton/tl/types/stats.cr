# Copyright 2020 - Chris Watson <cawatson1993@gmail.com>
#
# You should have received with this program a copy of the MIT license. This code is
# subject to the terms and conditions outlined in said license. For more information,
# please see https://en.wikipedia.org/wiki/MIT_License.
#
# This file was autogenerated. Please do not modify directory.
require "../../helpers"
require "../../tl_object"

module Proton
  module TL
    class BroadcastStats < TLObject
      getter constructor_id = 0xbdf78394_u32
      
      property period : StatsDateRangeDays
      property followers : StatsAbsValueAndPrev
      property views_per_post : StatsAbsValueAndPrev
      property shares_per_post : StatsAbsValueAndPrev
      property enabled_notifications : StatsPercentValue
      property growth_graph : StatsGraph
      property followers_graph : StatsGraph
      property mute_graph : StatsGraph
      property top_hours_graph : StatsGraph
      property interactions_graph : StatsGraph
      property iv_interactions_graph : StatsGraph
      property views_by_source_graph : StatsGraph
      property new_followers_by_source_graph : StatsGraph
      property languages_graph : StatsGraph
      property recent_message_interactions : Array(MessageInteractionCounters)
      
      def initialize(
        @period : StatsDateRangeDays,
        @followers : StatsAbsValueAndPrev,
        @views_per_post : StatsAbsValueAndPrev,
        @shares_per_post : StatsAbsValueAndPrev,
        @enabled_notifications : StatsPercentValue,
        @growth_graph : StatsGraph,
        @followers_graph : StatsGraph,
        @mute_graph : StatsGraph,
        @top_hours_graph : StatsGraph,
        @interactions_graph : StatsGraph,
        @iv_interactions_graph : StatsGraph,
        @views_by_source_graph : StatsGraph,
        @new_followers_by_source_graph : StatsGraph,
        @languages_graph : StatsGraph,
        @recent_message_interactions : Array(MessageInteractionCounters)
      )
      end
      
      def to_bytes
        buffer = IO::Memory.new
        buffer.write_bytes(self.constructor_id, IO::ByteFormat::LittleEndian)
        buffer.write(@period.to_bytes)
        buffer.write(@followers.to_bytes)
        buffer.write(@views_per_post.to_bytes)
        buffer.write(@shares_per_post.to_bytes)
        buffer.write(@enabled_notifications.to_bytes)
        buffer.write(@growth_graph.to_bytes)
        buffer.write(@followers_graph.to_bytes)
        buffer.write(@mute_graph.to_bytes)
        buffer.write(@top_hours_graph.to_bytes)
        buffer.write(@interactions_graph.to_bytes)
        buffer.write(@iv_interactions_graph.to_bytes)
        buffer.write(@views_by_source_graph.to_bytes)
        buffer.write(@new_followers_by_source_graph.to_bytes)
        buffer.write(@languages_graph.to_bytes)
        buffer.write_bytes(0x15c4b51c_u32, IO::ByteFormat::LittleEndian)
        buffer.write_bytes(@recent_message_interactions.size, IO::ByteFormat::LittleEndian)
        @recent_message_interactions.each do |val|
          builder.write(val.to_bytes)
        end
        buffer
      end
      
      def self.from_bytes(bytes)
      end
    end
  end
end
