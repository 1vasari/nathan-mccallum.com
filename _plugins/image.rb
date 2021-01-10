require 'image_size'
require 'ostruct'
require 'json'


module Jekyll
  class ImageInlineTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      params = OpenStruct.new(JSON.parse(text))
      file_path = File.join(__dir__, '..', 'assets', params.src)

      if File.exist?(file_path)
        size = ImageSize.path(file_path)
        @width = size.width
        @height = size.height
      else
        puts "WARNING: image file not found: #{file_path}"
        @width = 1
        @height = 1
      end

      @src = "/assets/#{params.src}"
      @alt = params.alt || ''
    end

    def render(context)
      %Q{<img src="#{@src}" alt="#{@alt}" width="#{@width}" height="#{@height}" loading="lazy">}
    end
  end
end

Liquid::Template.register_tag('image', Jekyll::ImageInlineTag)
