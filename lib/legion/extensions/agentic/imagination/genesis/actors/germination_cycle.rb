# frozen_string_literal: true

require 'legion/extensions/actors/every'

module Legion
  module Extensions
    module Agentic
      module Imagination
        module Genesis
          module Actor
            class GerminationCycle < Legion::Extensions::Actors::Every
              def runner_class
                Legion::Extensions::Agentic::Imagination::Genesis::Runners::Genesis
              end

              def runner_function
                'genesis_report'
              end

              def time
                900
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
