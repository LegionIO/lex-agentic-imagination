# frozen_string_literal: true

require 'legion/extensions/actors/every'

module Legion
  module Extensions
    module Agentic
      module Imagination
        module Creativity
          module Actor
            class CreativeTick < Legion::Extensions::Actors::Every
              def runner_class
                Legion::Extensions::Agentic::Imagination::Creativity::Runners::Creativity
              end

              def runner_function
                'creative_tick'
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
