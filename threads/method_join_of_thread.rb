#!/usr/bin/ruby

# method "join" of thread:
# The calling thread will suspend execution and run thr. Does not return until thr exits or until limit seconds have passed.
# If the time limit expires, nil will be returned, otherwise thr is returned.
# Any threads not joined will be killed when the main program exits.
# If thr had previously raised an exception and the abort_on_exception and $DEBUG flags are not set (so the exception has not
# yet been processed) it will be processed at this time.

def first_function
  i = 0
  while i <= 2
    puts "first_function at: #{Time.now}"
    sleep(2)
    i = i.next
  end
end

def second_function
   j = 0
   while j <= 2
      puts "second_function at: #{Time.now}"
      sleep(1)
      j = j.next
   end
end

puts "Started At #{Time.now}"
t1 = Thread.new{ first_function() }
t2 = Thread.new{ second_function() }
t1.join
t2.join
puts "End at #{Time.now}"
