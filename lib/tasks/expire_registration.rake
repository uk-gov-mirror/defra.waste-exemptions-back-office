# frozen_string_literal: true

require_relative "../close_airbrake"

namespace :expire_registration do
  desc "Set the status of expired registations to expired"
  task run: :environment do
    ExpiredRegistrationsService.run

    CloseAirbrake.now
  end
end
