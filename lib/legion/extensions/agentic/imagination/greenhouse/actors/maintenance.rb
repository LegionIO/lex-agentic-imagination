# frozen_string_literal: true

module Legion
  module Extensions
    module Agentic
      module Imagination
        module Greenhouse
          module Actors
            class Maintenance < Legion::Extensions::Actors::Every
              def runner_class = Runners::CognitiveGreenhouse
              def runner_function = 'tend_greenhouse'
              def time = 120
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
