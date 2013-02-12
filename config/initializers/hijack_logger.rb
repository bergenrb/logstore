class Logger
  alias old_add add

  def add(severity, message=nil, progname=nil, &block)
    begin
      Logstore::Log.create!(message: message)
    rescue Exception => e
      old_add(severity, "Failed to write log msg to db: #{e}", progname, &block)
    end
    old_add(severity, message, progname, &block)
  end
end
