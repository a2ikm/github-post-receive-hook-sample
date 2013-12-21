require "logger"
require "json"

class App < Sinatra::Base
  set :logger, Logger.new(STDOUT)

  post '/' do
    push = JSON.parse(params[:payload])
    logger.info "push: #{JSON.pretty_generate(push)}"
    200
  end
end
