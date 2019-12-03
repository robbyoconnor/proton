# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the way the text should be parsed for TextEntities.
  abstract class TextParseMode < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "textParseModeMarkdown" => Types::TextParseMode::Markdown,
      "textParseModeHTML" => Types::TextParseMode::HTML
    })
  end
end

require "./text_parse_mode/markdown"
require "./text_parse_mode/html"