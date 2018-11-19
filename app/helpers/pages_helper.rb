module PagesHelper
	def url_for_page(page)
		if page.slug.present?
			root_path + page.slug
		else
			"pages/#{page.id}"
		end
	end
end
