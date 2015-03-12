require 'codeship'

config = YAML::load_file('config/codeship.yml')

SCHEDULER.every '10m', :first_in => 0 do |job|
  config['projects'].each do |project|
    project_status = Codeship::Status.new project[1]
    send_event("codeship-#{project[1]}", {current: project_status.status})
  end
end
