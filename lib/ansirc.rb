#!/usr/bin/env ruby
# ansirc - ANSI colors <-> IRC color codes and vice versa.
#
# Written by Ricky Elrod (github: @CodeBlock) and released an MIT license.
# https://www.github.com/CodeBlock/ansirc-gem

class ANSIRC
  COLOR_MAP = {
    "\033[0m"    => '',
    "\033[1;37m" => 0,
    "\033[0;30m" => 1,
    "\033[0;34m" => 2,
    "\033[0;32m" => 3,
    "\033[0;31m" => 4,
    "\033[0;33m" => 5,
    "\033[0;35m" => 6,
    "\033[0;33m" => 7,
    "\033[1;33m" => 8,
    "\033[1;32m" => 9,
    "\033[0;36m" => 10,
    "\033[1;36m" => 11,
    "\033[1;34m" => 12,
    "\033[1;31m" => 13,
    "\033[1;30m" => 14,
    "\033[0;37m" => 15
  }

  def self.to_irc(text)
    COLOR_MAP.each { |ansi, irc| text.gsub!(ansi, "#{3.chr}#{irc}") }
    text
  end

  def self.to_ansi(text)
    COLOR_MAP.each { |ansi, irc| text.gsub!("#{3.chr}#{irc}", ansi) }
    text
  end
end
