# frozen_string_literal: true

module Legion
  module Extensions
    module Agentic
      module Imagination
        module TimeTravel
          module Actor
            class Maintenance < Legion::Extensions::Actors::Every
              def runner_class = Runners::MentalTimeTravelRunner
              def runner_function = 'update_mental_time_travel'
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
