"DAY 2: Fibonacci Sequenes \n\n" print

" * Iterable: " print
fibCalc := method(n, a := 0; b := 1; for(i, 1, n, 
                                                 a = a + b; 
                                                 b = a - b))
for(i, 1, 10,  fibCalc(i) print ", " print)

"\n * Recursive: " print
fibRecurse := method(limit, 

                fib := method(count, limit, a , b, 
                              count = count + 1; 
                              if(count == limit, a, fib(count, limit, b, a + b)))


                return fib(0, limit, 0, 1))

for(i, 1, 10, "#{i}: " fibRecurse(i) print ", " print)

"\n\nDAY 2: Change divide by 0\n\n" print

" * Original: " print 
(1 / 0) println


Number div := Number getSlot("/")
Number setSlot("/", method(denom, 
  if(denom == 0, return 0)
  return self div(denom)
))


" * Rebound: " print
(1 / 0) println
" * (6 / 2) should still be 3... #{(6 / 2)}" interpolate println

"\nDAY 2: Write a program to add up all the numbers in a 2D array \n\n" print
