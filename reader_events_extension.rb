# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class ReaderEventsExtension < Radiant::Extension
  version "1.0"
  description "Knits together reader and event_calendar extensions to allow readers to submit events to a holding pen"
  url "http://yourwebsite.com/reader_events"
  
  # define_routes do |map|
  #   map.namespace :admin, :member => { :remove => :get } do |admin|
  #     admin.resources :reader_events
  #   end
  # end
  
  extension_config do |config|
    config.extension 'reader'
    config.extension 'event_calendar'
  end
  
  def activate

  end
  
  def deactivate
    # admin.tabs.remove "Reader Events"
  end
  
end
