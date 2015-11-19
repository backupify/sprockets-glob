# Add "require_glob" and "stub_glob" directives to Sprockets
# See comments in Sprockets::DirectiveProcessor if you don't know what's going on here
module Sprockets
  module Glob
    class DirectiveProcessor < Sprockets::DirectiveProcessor
      def process_require_glob_directive(glob)
        each_file(glob) {|fn| process_require_directive(fn)}
      end

      def process_stub_glob_directive(glob)
        each_file(glob) {|fn| process_stub_directive(fn)}
      end

      private

      def each_file(glob)
        Dir["#{pathname.dirname}/#{glob}"].sort.each(&Proc.new)
      end
    end
  end
end

