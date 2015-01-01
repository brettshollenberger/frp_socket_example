directories = ["../app", "../middlewares"]

directories.each do |dir|
  Dir[File.expand_path(File.join(__FILE__, "#{dir}/**/*.rb"))].each { |f| require f }
end

use FRP::NumsServer

run FRP::App
