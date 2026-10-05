'From Cuis7.7 [latest update: #7912] on 9 May 2026 at 8:12:14 pm'!
'Description '!
!provides: 'CodeCoverageProfiler' 1 2!
!requires: 'Cuis-Base' 77 7912 nil!
SystemOrganization addCategory: #CodeCoverageProfiler!


!classDefinition: #CodeCoverageProfiler category: #CodeCoverageProfiler!
Object subclass: #CodeCoverageProfiler
	instanceVariableNames: 'packageNameToProfile secondsToWaitForSystemToStabilize numberOfWarmUps numberOfMeasurements measurementsOfTestRunsWithoutCodeCoverage measurementsOfTestRunsWithCodeCoverage iterations'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageProfiler'!
!classDefinition: 'CodeCoverageProfiler class' category: #CodeCoverageProfiler!
CodeCoverageProfiler class
	instanceVariableNames: ''!


!CodeCoverageProfiler methodsFor: 'initialization' stamp: 'NPM 9/May/2026 20:12:08'!
initializeToProfilePackageNamed: aPackageName 
	
	packageNameToProfile := aPackageName.
	secondsToWaitForSystemToStabilize := 120.
	numberOfWarmUps := 10.
	iterations := 1 to: 50.! !

!CodeCoverageProfiler methodsFor: 'profiling' stamp: 'NPM 9/May/2026 18:16:42'!
createCodeCoverageAnalyzer
	
	^ CodeCoverageAnalyzer toAnalyzeAll: self packageToProfile compiledMethodsInNonTestCaseClasses! !

!CodeCoverageProfiler methodsFor: 'profiling' stamp: 'NPM 9/May/2026 18:16:53'!
createTestSuite
	
	^ TestSuite
		forSystemCategoryNamed: packageNameToProfile
		using: SystemOrganization! !

!CodeCoverageProfiler methodsFor: 'profiling' stamp: 'NPM 9/May/2026 18:16:40'!
packageToProfile

	^ CodePackage installedPackages at: packageNameToProfile! !

!CodeCoverageProfiler methodsFor: 'profiling' stamp: 'NPM 9/May/2026 18:11:55'!
profile
	
	self
		prepareSystemToProfile;
		profileTestRunWithoutCoverage;
		profileTestRunWithCoverage;
		writeResults
	
	! !

!CodeCoverageProfiler methodsFor: 'profiling' stamp: 'NPM 9/May/2026 20:11:11'!
profileIteration: anIteration during: aBlock 

	| totalTimeInMs endVMStats endTicks garbageCollectionTimeInMs numberOfGarbageCollections incrementalGarbageCollectionTimeInMs numberOfIncrementalGarbageCollections setupTimeInMs setupTicks startVMStats startTicks teardownTimeInMs testRunTimeInMs testRunTicks ticksPerMs |

	Smalltalk garbageCollect.
	startVMStats := Smalltalk getVMParameters.
	ticksPerMs := Time highResTimerTicksPerMillisecond.
	startTicks := Time primHighResClock.
	setupTicks := nil.
	testRunTicks := nil.
	
	aBlock
		value: [ setupTicks := Time primHighResClock ]
		value: [ testRunTicks := Time primHighResClock ].
	
	endTicks := Time primHighResClock.
	endVMStats := Smalltalk getVMParameters.
	setupTimeInMs := setupTicks ifNil: [ 0 ] ifNotNil: [ (setupTicks - startTicks) / ticksPerMs ].
	testRunTimeInMs := testRunTicks ifNil: [ 0 ] ifNotNil: [ (testRunTicks - setupTicks) / ticksPerMs ].
	teardownTimeInMs := testRunTicks ifNil: [ 0 ] ifNotNil: [ (endTicks - testRunTicks) / ticksPerMs ].
	totalTimeInMs := (endTicks - startTicks) / ticksPerMs.
	
	numberOfGarbageCollections := (endVMStats at: 7) - (startVMStats at: 7).
	garbageCollectionTimeInMs := (endVMStats at: 8) - (startVMStats at: 8).
	numberOfIncrementalGarbageCollections := (endVMStats at: 9) - (startVMStats at: 9).
	incrementalGarbageCollectionTimeInMs := (endVMStats at: 10) - (startVMStats at: 10).
	
	^ { anIteration.
		totalTimeInMs asFloat.
		setupTimeInMs asFloat.
		testRunTimeInMs asFloat.
		teardownTimeInMs asFloat.
		numberOfGarbageCollections.
		garbageCollectionTimeInMs.
		numberOfIncrementalGarbageCollections.
		incrementalGarbageCollectionTimeInMs }! !

!CodeCoverageProfiler methodsFor: 'profiling' stamp: 'NPM 9/May/2026 18:20:22'!
profileTestRunWithCoverage

	self
		prepareToMeasureTestRunsWithCodeCoverage;
		measureTestRunsWithCodeCoverage! !

!CodeCoverageProfiler methodsFor: 'profiling' stamp: 'NPM 9/May/2026 18:21:37'!
profileTestRunWithoutCoverage

	self
		prepareToMeasureTestRunsWithoutCoverage;
		measureTestRunsWithoutCoverage! !

!CodeCoverageProfiler methodsFor: 'profiling tests with code coverage' stamp: 'NPM 9/May/2026 18:24:08'!
measureTestRunWithCodeCoverageInIteration: anIteration

	| codeCoverageAnalyzer testSuite |
	
	codeCoverageAnalyzer := self createCodeCoverageAnalyzer.
	testSuite := self createTestSuite.
	
	^ self 
		profileIteration: anIteration 
		during: [ :setupDoneBlock :testRunDoneBlock | 
			codeCoverageAnalyzer value: [
				setupDoneBlock value.
				testSuite run.
				testRunDoneBlock value ]]! !

!CodeCoverageProfiler methodsFor: 'profiling tests with code coverage' stamp: 'NPM 9/May/2026 18:22:44'!
measureTestRunsWithCodeCoverage
	
	measurementsOfTestRunsWithCodeCoverage := iterations
		collect: [ :iteration | self measureTestRunWithCodeCoverageInIteration: iteration ]! !

!CodeCoverageProfiler methodsFor: 'profiling tests with code coverage' stamp: 'NPM 9/May/2026 18:20:30'!
prepareToMeasureTestRunsWithCodeCoverage
	
	numberOfWarmUps timesRepeat: [ 
		| codeCoverageAnalyzer testSuite |
		
		codeCoverageAnalyzer := self createCodeCoverageAnalyzer.
		testSuite := self createTestSuite.
		codeCoverageAnalyzer value: [ testSuite run ] ].
	
	Smalltalk garbageCollect.! !

!CodeCoverageProfiler methodsFor: 'profiling tests without code coverage' stamp: 'NPM 9/May/2026 18:23:52'!
measureTestRunWithoutCoverageInIteration: anIteration

	| testSuite |
	
	testSuite := self createTestSuite.
	
	^ self
		profileIteration: anIteration
		during: [ :setupDoneBlock :testRunDoneBlock | testSuite run ]! !

!CodeCoverageProfiler methodsFor: 'profiling tests without code coverage' stamp: 'NPM 9/May/2026 18:22:38'!
measureTestRunsWithoutCoverage
	
	measurementsOfTestRunsWithoutCodeCoverage := iterations collect: [ :iteration |
		self measureTestRunWithoutCoverageInIteration: iteration ]! !

!CodeCoverageProfiler methodsFor: 'profiling tests without code coverage' stamp: 'NPM 9/May/2026 18:21:37'!
prepareToMeasureTestRunsWithoutCoverage
	
	numberOfWarmUps timesRepeat: [ self createTestSuite run ].
	
	Smalltalk garbageCollect.! !

!CodeCoverageProfiler methodsFor: 'setup' stamp: 'NPM 9/May/2026 18:13:03'!
installCodeCoveragePackage
	
	Feature require: 'CodeCoverage'! !

!CodeCoverageProfiler methodsFor: 'setup' stamp: 'NPM 9/May/2026 18:13:13'!
installPackageToProfile
	
	Feature require: packageNameToProfile! !

!CodeCoverageProfiler methodsFor: 'setup' stamp: 'NPM 9/May/2026 18:13:03'!
prepareSystemToProfile

	self
		installCodeCoveragePackage;
		installPackageToProfile;
		waitForSystemToStabilize! !

!CodeCoverageProfiler methodsFor: 'setup' stamp: 'NPM 9/May/2026 18:12:12'!
waitForSystemToStabilize
	
	(Delay forSeconds: secondsToWaitForSystemToStabilize) wait! !

!CodeCoverageProfiler methodsFor: 'writing results' stamp: 'NPM 9/May/2026 18:21:52'!
convertToCSV: results 
	
	^ String streamContents: [ :csv | results asStringOn: csv delimiter: ',' last: ',' ]! !

!CodeCoverageProfiler methodsFor: 'writing results' stamp: 'NPM 9/May/2026 18:13:13'!
resultsFile
	
	^ (packageNameToProfile, Time primHighResClock asString, '.txt') asFileEntry! !

!CodeCoverageProfiler methodsFor: 'writing results' stamp: 'NPM 9/May/2026 18:22:44'!
writeResults
	
	self resultsFile
		writeStreamDo: [ :stream |
			self
				writeTitle: 'Test run without coverage' andResults: measurementsOfTestRunsWithoutCodeCoverage into: stream;
				writeTitle: 'Test run with coverage' andResults: measurementsOfTestRunsWithCodeCoverage into: stream ]! !

!CodeCoverageProfiler methodsFor: 'writing results' stamp: 'NPM 9/May/2026 18:07:47'!
writeTitle: aTitle andResults: results into: aStream 
	
	aStream
		nextPutAll: aTitle; newLine;
		nextPutAll: 'Iteration,Time(ms),Instrument methods(ms),Test run(ms),Restore original methods(ms),GCs,GCs(ms),Incremental GCs,Incremental GCs(ms)'; newLine.
	results do: [ :result | aStream nextPutAll:  (self convertToCSV: result); newLine ].
	aStream newLine! !

!CodeCoverageProfiler class methodsFor: 'profiling' stamp: 'NPM 9/May/2026 18:09:10'!
profilePackageNamed: aPackageName 
	
	^ (self toProfilePackageNamed: aPackageName) profile! !

!CodeCoverageProfiler class methodsFor: 'instance creation' stamp: 'NPM 9/May/2026 18:09:22'!
toProfilePackageNamed: aPackageName 
	
	^ self new
		initializeToProfilePackageNamed: aPackageName! !
