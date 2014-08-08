
module Q
  def self.p(*args, &block)
    callable = block || args[0]

    if callable.respond_to?(:yield)
      source = callable.source.strip if RUBY_VERSION[0].to_i >= 2
      
      puts "#{source} -> #{callable.yield}"
    else
      if RUBY_VERSION[0].to_i >= 2
        cl = caller_locations[0]

        source = File.readlines(cl.path)[cl.lineno-1].strip
      end

      puts "#{source} -> #{args.join(',')}"
    end
  end
end