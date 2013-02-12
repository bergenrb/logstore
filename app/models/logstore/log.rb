module Logstore
  class Log < ActiveRecord::Base
    attr_accessible :message
  end
end
