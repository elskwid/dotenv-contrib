module DotenvContrib
  module Ensure
    class MissingEnvironmentVariable < StandardError; end

    def ensure(key)
      if ENV[key].nil?
        raise MissingEnvironmentVariable,
        "Missing required environment variable #{key}"
      end
    end
  end

  ::Dotenv.send :extend, Ensure
end
