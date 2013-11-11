require 'req/compare/comparison'

module Req
  module Compare
    module Commands
      class Compare
        extend Req::Commands::Optionable

        def self.setup(context)
          context.desc "compare", "compare the html of a request with a stored request"
        end

        def self.run(url=nil)
          Req::Compare::Comparison.url(url, options)
        end
      end
    end
  end
end

Req::CLI.command_classes << Req::Compare::Commands::Compare
