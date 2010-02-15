# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class ReaderEventsExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/reader_events"
  
  # define_routes do |map|
  #   map.namespace :admin, :member => { :remove => :get } do |admin|
  #     admin.resources :reader_events
  #   end
  # end
  
  def activate
    # admin.tabs.add "Reader Events", "/admin/reader_events", :after => "Layouts", :visibility => [:all]
  end
  
  def deactivate
    # admin.tabs.remove "Reader Events"
  end
  
end
