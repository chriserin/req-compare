require "req/compare/version"

module Req
  module Compare
    Req.command_dirs << File.join(File.expand_path(File.dirname(__FILE__)), "compare/commands/")
  end
end
