Pry.config.editor = "vim -f"

Pry.config.prompt = proc do |object, level, pry|
  prompt = "#{RUBY_VERSION}"
  prompt << "::#{Rails.version}" if defined?(Rails)
  "#{prompt} (#{object})> "
end

Pry.config.exception_handler = proc do |output, exception, pry|
  output.puts Pry::Helpers::Text.red("#{exception.class}: #{exception.message}\n from #{exception.backtrace.first}")
end

if defined?(Rails)
  require 'rails/console/app'
  require 'rails/console/helpers'
end

begin
  require 'awesome_print'

  if defined?(Pry)
    Pry.config.print = proc { |output, value| Pry::Helpers::BaseHelpers.stagger_output("=> #{value.ai}", output) }
  end
rescue LoadError => err
  warn '=> Unable to load awesome_print'
end
