# frozen_string_literal: true

require 'legion/extensions/agentic/imagination/aurora/helpers/constants'
require 'legion/extensions/agentic/imagination/aurora/helpers/aurora_event'
require 'legion/extensions/agentic/imagination/aurora/helpers/spectral_band'
require 'legion/extensions/agentic/imagination/aurora/helpers/aurora_engine'
require 'legion/extensions/agentic/imagination/aurora/runners/cognitive_aurora'

module Legion
  module Extensions
    module Agentic
      module Imagination
        module Aurora
          class Client
            include Runners::CognitiveAurora

            def initialize(**)
              @default_engine = Helpers::AuroraEngine.new
            end
          end
        end
      end
    end
  end
end
