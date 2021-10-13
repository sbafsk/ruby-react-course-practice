# frozen_string_literal: true

# - prettyprint is available in the Ruby Standard Library,
# whereas colorize is a gem that need to be downloaded and
# installed. (Fortunately, the `gem` tool makes this easy.)
#
# - If you're curious about how a gem or library works,
# you can always read the documentation!

require 'pp'

require_relative 'contacts'

pp @contacts
