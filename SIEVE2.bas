
    'sieve2.bas
    'Notice that arrays are globally visible to functions.
    'The sieve() function uses the flags() array.
    'This is a Sieve benchmark adapted from BYTE 1985
    ' May, page 286

    size = 7000
    dim flags(7001)
    start = time$("ms")
    print sieve(size); " primes found."
    print "End of iteration.  Elapsed time in milliseconds: "; time$("ms")-start
    end

    function sieve(size)
        for i = 0 to size
            if flags(i) = 0 then
                prime = i + i + 3
                k = i + prime
                while k <= size
                    flags(k) = 1
                    k = k + prime
                wend
                sieve = sieve + 1
            end if
        next i
    end function

