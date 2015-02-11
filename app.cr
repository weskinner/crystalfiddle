require "frank"
require "./views/*"

get "/" do |context|
  context.response.content_type = "text/html"
  Views::Index.new
end
