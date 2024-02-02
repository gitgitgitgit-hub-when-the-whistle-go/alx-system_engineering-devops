#!/usr/bin/env ruby
from = ARGV[0].scan(/(?<=from:)(.*)(?=]).*(?<=to:)/)
to = ARGV[0].scan(/(?<=to:)(.*)(?=] ).*(?<=flags:)/)
flags = ARGV[0].scan(/(?<=flags:)(.*)(?=] ).*(?<=msg:)/)
puts [from, to, flags].join(',')
