module Jekyll
	class RenderDate < Liquid::Tag

		def initialize(tag_name, text, tokens)
			super
			@text = text			
		end

		def render(context)
			return Time.now.strftime("%B %Y")
		end
	end
end

Liquid::Template.register_tag('render_date', Jekyll::RenderDate)