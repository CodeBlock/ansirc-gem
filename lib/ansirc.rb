#!/usr/bin/env ruby
# ansirc - ANSI colors <-> IRC color codes and vice versa.
#
# Written by Ricky Elrod (github: @CodeBlock) and released an MIT license.
# https://www.github.com/CodeBlock/ansirc-gem

class ANSIRC
  COLOR_MAP = {
    "\033[0m"    => "\0xF",
    "\033[1;37m" => "\0030",
    "\033[0;30m" => "\0031",
    "\033[0;34m" => "\0032",
    "\033[0;32m" => "\0033",
    "\033[0;31m" => "\0034",
    "\033[0;33m" => "\0035",
    "\033[0;35m" => "\0036",
    "\033[0;33m" => "\0037",
    "\033[1;33m" => "\0038",
    "\033[1;32m" => "\0039",
    "\033[0;36m" => "\00310",
    "\033[1;36m" => "\00311",
    "\033[1;34m" => "\00312",
    "\033[1;31m" => "\00313",
    "\033[1;30m" => "\00314",
    "\033[0;37m" => "\00315"
  }

  def self.to_irc(text)
    COLOR_MAP.each { |ansi, irc| text.gsub!(ansi, irc) }
    text
  end

  def self.to_ansi(text)
    COLOR_MAP.each { |ansi, irc| text.gsub!(irc, ansi) }
    text
  end
end
