# frozen_string_literal: true

require 'legion/extensions/agentic/imagination/time_travel/helpers/constants'
require 'legion/extensions/agentic/imagination/time_travel/helpers/temporal_waypoint'
require 'legion/extensions/agentic/imagination/time_travel/helpers/mental_journey'
require 'legion/extensions/agentic/imagination/time_travel/helpers/time_traveler'
require 'legion/extensions/agentic/imagination/time_travel/runners/mental_time_travel'

module Legion
  module Extensions
    module Agentic
      module Imagination
        module TimeTravel
          class Client
            include Runners::MentalTimeTravelRunner

            attr_reader :traveler

            def initialize(traveler: nil, **)
              @traveler = traveler || Helpers::TimeTraveler.new
            end
          end
        end
      end
    end
  end
end
