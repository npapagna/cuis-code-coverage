"Method Coverage overrides for CodeCoverageProfiler 1.2.

These are the three methods that were changed by hand in the measurement
image on 23 May 2026, right before the Method Coverage series were run.
They are copied verbatim from that image's change log
(Cuis7.7-7777.user.116.changes); only the 'prior:' source pointers were
removed, since they refer to that image's .changes file.

File this in after CodeCoverageProfiler.pck.st (1.2) and
CodeCoverageMethodCoverage.pck.st (1.1). The profiler then runs only the
block with coverage, using Method Coverage instead of the default
coverage, and writes only that block to the results file."!

!CodeCoverageProfiler methodsFor: 'profiling' stamp: 'NPM 23/May/2026 11:09:49'!
profile
	
	self
		prepareSystemToProfile;
		
		profileTestRunWithCoverage;
		writeResults
	
	! !

!CodeCoverageProfiler methodsFor: 'writing results' stamp: 'NPM 23/May/2026 11:09:59'!
writeResults
	
	self resultsFile
		writeStreamDo: [ :stream |
			self
				
				writeTitle: 'Test run with coverage' andResults: measurementsOfTestRunsWithCodeCoverage into: stream ]! !

!CodeCoverageProfiler methodsFor: 'profiling' stamp: 'NPM 23/May/2026 11:10:50'!
createCodeCoverageAnalyzer
	
	^ CodeCoverageAnalyzer toAnalyzeAllWithMethodCoverage: self packageToProfile compiledMethodsInNonTestCaseClasses! !
