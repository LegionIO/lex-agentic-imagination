# frozen_string_literal: true

module Legion
  module Extensions
    module Agentic
      module Imagination
        module MentalSimulation
          module Actor
            class Maintenance < Legion::Extensions::Actors::Every
              def runner_class = Runners::MentalSimulation
              def runner_function = 'prune_completed'
              def time = 300
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
