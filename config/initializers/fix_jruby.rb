module Arel
  module Visitors
    class DepthFirst < Arel::Visitors::Visitor
      def initialize block = nil
        @block = block || Proc.new
        if defined?(JRUBY_VERSION)
          require 'java'
          if @block.to_java.block.arity.nil?
            @block = lambda { |c| nil }
          end
        end
      end
    end
  end
end