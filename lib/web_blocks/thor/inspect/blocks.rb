require 'web_blocks/thor/inspect'
require 'web_blocks/thor/inspect/blocks/block_printer'

module WebBlocks
  module Thor
    class Inspect

      blocks_desc = 'List of registered blocks, optionally with attributes and filtered to a route'
      desc "blocks", blocks_desc
      long_desc blocks_desc
      method_option :route, :type => :array, :default => [], :desc => 'Route to block to print'
      method_option :attributes, :type => :boolean, :default => false, :desc => 'Show block attributes'

      def blocks

        prepare_blocks!

        Blocks::BlockPrinter.new(
          root.block_from_route(options.route),
          :attributes => options[:attributes]
        ).print!

      end

    end
  end
end