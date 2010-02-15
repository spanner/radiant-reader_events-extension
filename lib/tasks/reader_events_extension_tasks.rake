namespace :radiant do
  namespace :extensions do
    namespace :reader_events do
      
      desc "Runs the migration of the Reader Events extension"
      task :migrate => :environment do
        require 'radiant/extension_migrator'
        if ENV["VERSION"]
          ReaderEventsExtension.migrator.migrate(ENV["VERSION"].to_i)
        else
          ReaderEventsExtension.migrator.migrate
        end
      end
      
      desc "Copies public assets of the Reader Events to the instance public/ directory."
      task :update => :environment do
        is_svn_or_dir = proc {|path| path =~ /\.svn/ || File.directory?(path) }
        puts "Copying assets from ReaderEventsExtension"
        Dir[ReaderEventsExtension.root + "/public/**/*"].reject(&is_svn_or_dir).each do |file|
          path = file.sub(ReaderEventsExtension.root, '')
          directory = File.dirname(path)
          mkdir_p RAILS_ROOT + directory, :verbose => false
          cp file, RAILS_ROOT + path, :verbose => false
        end
      end  
    end
  end
end
