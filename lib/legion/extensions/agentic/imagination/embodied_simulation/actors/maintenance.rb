# frozen_string_literal: true

module Legion
  module Extensions
    module Agentic
      module Imagination
        module EmbodiedSimulation
          module Actors
            class Maintenance < Legion::Extensions::Actors::Every
              def runner_class = Runners::EmbodiedSimulation
              def runner_function = 'update_embodied_simulation'
              def time = 60
              def use_runner? = false
              def check_subtask? = false
              def generate_task? = false
            end
          end
        end
      end
    end
  end
end
