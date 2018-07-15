	Program HotRod
	Integer s1, s2, s3, n/10/       ! generate 10 points at 1 cm intervals
	Real  x, T, Tprime, sigmaT/1.0/ ! with an uncertainty of +-1 degree
	Real GaussSmear
	  s1 = 1171
	  s2 = 343
        s3 = 1322
	  Call SetRandomDeviateSeed(s1, s2, s3)
	  Print *,'       Hot Rod Test Data,   sigma=',  sigmaT
        x = -0.5
	  do 100 i = 1, n
	    x      = x + 1.0           ! position along rod
	    T      = 10.0*x            ! calculate mean temperature at point
	    Tprime = GaussSmear(T,sigmaT)   ! smear it
	    Print *,i, x, T, Tprime
  100   continue
	  Call Exit
	END
	Include 'MonteLib.f95'
