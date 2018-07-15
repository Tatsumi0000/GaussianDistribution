C Program 5.2: \Chapt-5\PoisDcay.For
C Simulated decay of an unstable state.
C Uses QuikHist, MonteLib
      Program PoisDcay         !  Generate a 200-event Poisson  histogram
      Real lo/0/, int/1/, hi/22/
      Integer nEvents/400/, PoissonDeviate
      Real mu/8.4/
      Integer s1, s2, s3, i, k
      Real    x
      s1 = 1171
      s2 = 343
      s3 = 1322
      Call SetRandomDeviateSeed(s1, s2, s3)
      k=PoissonDeviate(mu,.TRUE.) ! Initialize - make the table
      do 100 i = 1, nEvents
        k = PoissonDeviate(mu,.FALSE.)
        x = k
   100 continue
      Call Exit
      END
      Include \F\Chapt-5\MonteLib.For
 