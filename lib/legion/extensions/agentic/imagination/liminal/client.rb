# frozen_string_literal: true

module Legion
  module Extensions
    module Agentic
      module Imagination
        module Liminal
          class Client
            include Runners::CognitiveLiminal

            def initialize
              @default_engine = Helpers::LiminalEngine.new
            end
          end
        end
      end
    end
  end
end
