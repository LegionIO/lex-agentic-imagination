# frozen_string_literal: true

require 'legion/extensions/agentic/imagination/prospection/helpers/constants'
require 'legion/extensions/agentic/imagination/prospection/helpers/scenario'
require 'legion/extensions/agentic/imagination/prospection/helpers/prospection_engine'
require 'legion/extensions/agentic/imagination/prospection/runners/prospection'

module Legion
  module Extensions
    module Agentic
      module Imagination
        module Prospection
          class Client
            include Runners::Prospection

            attr_reader :prospection_engine

            def initialize(prospection_engine: nil, **)
              @prospection_engine = prospection_engine || Helpers::ProspectionEngine.new
            end
          end
        end
      end
    end
  end
end
