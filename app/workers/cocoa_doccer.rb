require 'resque-lonely_job'

class CocoaDoccer
  extend Resque::Plugins::LonelyJob
  
  @queue = :cocoadocs_queue
  
  def self.perform podspec_name, podspec_version
    `sleep 10`
  end
  
end