# frozen_string_literal: true

module Legion
  module Extensions
    module Agentic
      module Imagination
        module EmbodiedSimulation
          class Client
            include Runners::EmbodiedSimulation

            def initialize(engine: nil)
              @engine = engine || Helpers::SimulationEngine.new
            end
          end
        end
      end
    end
  end
end
