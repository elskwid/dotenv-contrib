require 'spec_helper'

describe Dotenv do

  describe 'ensure' do
    it 'raises an error if the specified ENV variable is not set' do
      expect { Dotenv.ensure('DOTENV_ENSURE_TEST_BAD') }.
        to raise_error(DotenvContrib::Ensure::MissingEnvironmentVariable)
    end

    it 'passes if the speicified ENV variable is set' do
      ENV['DOTENV_ENSURE_TEST_GOOD'] = 'filled in'

      expect { Dotenv.ensure('DOTENV_ENSURE_TEST_GOOD') }.
        not_to raise_error
    end
  end

  def fixture_path(name)
    File.join(File.expand_path('../fixtures', __FILE__), name)
  end

  def expand(path)
    File.expand_path path
  end
end
