#!/usr/bin/ruby

# method "priority" of thread:
# Sets the priority of thr to integer. Higher-priority threads will run more frequently than
# lower-priority threads (but lower-priority threads can also run).
# This is just hint for Ruby thread scheduler. It may be ignored on some platform.

count1 = count2 = 0
a = Thread.new do
    loop { count1 += 1 }
  end
a.priority = -1

b = Thread.new do
    loop { count2 += 1 }
  end
b.priority = -2

sleep 1   #=> 1
count1    #=> 478118
count2    #=> 7301
