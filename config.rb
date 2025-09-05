require 'govuk_tech_docs'
require 'kramdown'

GovukTechDocs.configure(self)

set :markdown_engine, :kramdown
set :relative_links, true

configure :build do
  activate :relative_assets
end

helpers do
  def format_date(date)
    if date.is_a?(Date)
      date.strftime("%-e %B %Y")
    else
      Date.parse(date).strftime("%-e %B %Y")
    end
  end
end
