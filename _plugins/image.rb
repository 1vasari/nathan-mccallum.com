require 'image_size'
require 'ostruct'
require 'json'
require 'base64'


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
        ext = File.extname(file_path).gsub(/^\./, '')
        data = Base64.encode64(File.read(file_path))
        @src = "data:image/#{ext};charset=utf-8;base64,#{data}"
      else
        puts "WARNING: image file not found: #{file_path}"
        @width = 1
        @height = 1
        @src = "/assets/#{params.src}"
      end

      @alt = params.alt || ''
    end

    def render(context)
      %Q{<img src="#{@src}" alt="#{@alt}" width="#{@width}" height="#{@height}" loading="lazy">}
    end
  end
end

Liquid::Template.register_tag('image', Jekyll::ImageInlineTag)
