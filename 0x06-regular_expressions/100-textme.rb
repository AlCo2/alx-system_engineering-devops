#!/usr/bin/env ruby
print ARGV[0].scan(/from:(\+?\w*)/).join, ','
print ARGV[0].scan(/to:(\+?\w*)/).join, ','
print ARGV[0].scan(/flags:(-?\d:-?\d:-?\d:-?\d:-?\d)/).join
