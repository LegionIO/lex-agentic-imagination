# frozen_string_literal: true

require 'legion/extensions/actors/every'

module Legion
  module Extensions
    module Agentic
      module Imagination
        module Lucidity
          module Actor
            class LucidityCheck < Legion::Extensions::Actors::Every
              def runner_class
                Legion::Extensions::Agentic::Imagination::Lucidity::Runners::CognitiveLucidity
              end

              def runner_function
                'lucidity_status'
              end

              def time
                600
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
