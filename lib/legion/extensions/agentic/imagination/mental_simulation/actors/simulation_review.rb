# frozen_string_literal: true

require 'legion/extensions/actors/every'

module Legion
  module Extensions
    module Agentic
      module Imagination
        module MentalSimulation
          module Actor
            class SimulationReview < Legion::Extensions::Actors::Every
              def runner_class
                Legion::Extensions::Agentic::Imagination::MentalSimulation::Runners::MentalSimulation
              end

              def runner_function
                'favorable_simulations_report'
              end

              def time
                3600
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
