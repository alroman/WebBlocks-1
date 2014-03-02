require 'thor'
require 'WebBlocks/thor/inspect'
require 'WebBlocks/thor/partial/runner'
require 'WebBlocks/thor/build'
require 'WebBlocks/thor/watch'

module WebBlocks
  module Thor
    class Runner < ::Thor
      register ::WebBlocks::Thor::Inspect, :inspect, "inspect", "Inspect the blocks configuration and tree"
      register ::WebBlocks::Thor::Build, :build, "build", "Link, compile and optimize all assets"
      register ::WebBlocks::Thor::Watch, :watch, "watch", "Watch for changes and rebuild all assets"
      register ::WebBlocks::Thor::Partial::Runner, :partial, "partial", "Perform a single step of the build process"
    end
  end
end
