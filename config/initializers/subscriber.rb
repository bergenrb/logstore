ActiveSupport::Notifications.subscribe /process_action.action_controller/ do |*args| 
  event = ActiveSupport::Notifications::Event.new(*args)
  controller = event.payload[:controller]
  action = event.payload[:action]
  format = event.payload[:format] || "all"
  format = "all" if format == "*/*"
  status = event.payload[:status]
  key = "#{controller}.#{action}.#{format}.#{ENV["INSTRUMENTATION_HOSTNAME"]}"

  Logstore::Log.create!(message: key)
end
