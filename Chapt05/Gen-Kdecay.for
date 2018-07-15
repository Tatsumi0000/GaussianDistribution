	Program GenKdecay  !Monte Carlo for K-decay!
C----------------------------------------!
	 integer i
	 real beta, gamma
C--------------for K-Decay------
	 real
     a TauKaon /0.894E-10/,
     1 MassKaon /497.7/,
     2 d1       /10.0/, !Fiducial in cm!
     3 d2       /40.0/,
     4 xMean    /5.00/,
     5 xSig     /0.5/,
     6 pMean    /2000./,
     7 pSig     /100./,
     8 c        /3.00E10/
C----------------------------------------!
	real timeCM, timeLab, range, totalGen
	real x0, decayLoc, P
	character yORn
	print *, 'Type total number of events to be generated  '
	read *, totalGen
	print *,' Apply cuts (Y or N)? '
	read *,yOrn
	Open(5, 'test.dat')
	Print *,  'Monte Carlo Generation for example 5.7'
	Print 1000, totalGen, massKaon, d1, d2, tauKaon
	write (5,*) 'Monte Carlo Generation for example 5.7'
	write (5,1000) totalGen, massKaon, d1, d2, tauKaon
 1000 format(' Generated =', I5,' MassK=',F6.0, ' Cuts = d1=',f6.2,
     1' d2=', f6.2,' tau-K=',  E10.3)
	call SetRandomDeviateSeed(943, 919, 3113)
	i = 0
	nSuccess = 0
	do  while (i .lt. totalGen)
	  x0       = RandomGaussDeviate()*xSig+xMean   !production point
	  P        = RandomGaussDeviate()*pSig+pMean   !kaon momentum
	  beta     = P/EfromP(P,massKaon)            !kaon velocity/c!
	  gamma    = gammaFromBeta(beta)
	  timeCM   = cmLifeTime(tauKaon)             !lifetime in kaon frame!
	  timeLab  = timeCM*gamma                    !Lorents xfor to lab!
	  range    = timeLab*beta*c                  !kaon range!
	  decayLoc = x0+range                        !kaon decay point!
	  i = i+1
	  if (((yORn .ne. 'y')  .and. (yORn .ne. 'Y')) .or.
     1     ((decayLoc .ge. d1) .and. (decayLoc .lt. d2))) then
	    nSuccess = nsuccess+1
	    write(5,1100) nSuccess,x0,P,decayLoc,timeCM*1e10
 1100 format(I6, F10.2, F10.1, F10.2,F10.2)
	  end if
	end do  !until i = totalGen
	write (5,*) '-1','Total generated =', totalGen,
     1 ', Number of successes =', nsuccess
	print *, 'Total generated =', totalGen,', total successes =',
     1 nsuccess
	pause
	Close(5)
	print *, "Output file ""test.dat"" closed."
	END
	Real function EfromP(p,m)
	real p, m
	EfromP=sqrt(p*p+m*m)
	end

	Real function PfromE(e,m)
	real e,m
	PfromE = sqrt(e*e-m*m)
	end

	Real function GammaFromBeta(b)
	real b
	GammaFromBeta = 1/sqrt(1-b*b)
	end

	Real function PLorentz(P,M,CosTheta,Beta,gamma)
	real P,M,CosTheta,Beta,gamma
C     enter with Pcm and theta, return Plong in Lab!
	PLorentz = Gamma*(P*CosTheta+beta*EfromP(P,M))
	end

	Real function Atan(y,x)
	real y,x, th, pi /3.14159/
	th=Atan(y,x)
	if (x .lt. 0) th=th+pi
	if ((x .gt. 0) .and. (y. lt. 0)) th=th+2*pi
	Atan=th
	end


	Real function cmLifeTime(tau)
	real r,tau,t
	r = RandomDeviate()
	t = -tau*alog(1-r)
	cmLifeTime = t
	end
	Include c:\f\chapt-5\MonteLib.for

