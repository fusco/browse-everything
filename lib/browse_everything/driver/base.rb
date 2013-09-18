module BrowseEverything
  module Driver
    class Base
      include BrowseEverything::Engine.routes.url_helpers

      attr_reader :config

      def initialize(config,session_info={})
        @config = config
        validate_config
      end

      def icon
        'unchecked'
      end

      def name
        self.class.name.split(/::/).last.titleize
      end

      def validate_config
      end

      def contents(path)
        []
      end

      def details(path)
        {}
      end

      def authorized?
        false
      end

      def auth_link
        ''
      end
    end
  end
end