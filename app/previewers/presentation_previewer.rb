class PresentationPreviewer < ActiveStorage::Previewer
	class << self
		def accept?(blob)
			blob.content_type = ''

		end
	end
end