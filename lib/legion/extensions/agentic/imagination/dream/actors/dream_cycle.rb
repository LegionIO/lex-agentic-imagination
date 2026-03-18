# frozen_string_literal: true

require 'legion/extensions/actors/every'

module Legion
  module Extensions
    module Agentic
      module Imagination
        module Dream
          module Actor
            class DreamCycle < Legion::Extensions::Actors::Every
              def runner_class
                Legion::Extensions::Agentic::Imagination::Dream::Runners::DreamCycle
              end

              def runner_function
                'execute_dream_cycle'
              end

              def time
                300
              end

              def run_now?
                false
              end

              def use_runner?
                false
              end

              def check_subtask?
                false
              end

              def generate_task?
                false
              end
            end
          end
        end
      end
    end
  end
end
