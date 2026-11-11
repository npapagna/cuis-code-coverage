'From Cuis7.9 [latest update: #8090] on 5 August 2026 at 4:26:00 pm'!
'Description Set author initials with new message'!
!provides: 'Tools-ConsoleTestRunner' 1 3!
SystemOrganization addCategory: #'Tools-ConsoleTestRunner'!


!classDefinition: #ConsoleTestRunner category: #'Tools-ConsoleTestRunner'!
Object subclass: #ConsoleTestRunner
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-ConsoleTestRunner'!
!classDefinition: 'ConsoleTestRunner class' category: #'Tools-ConsoleTestRunner'!
ConsoleTestRunner class
	instanceVariableNames: ''!

!classDefinition: #TestResultConsolePrinter category: #'Tools-ConsoleTestRunner'!
Object subclass: #TestResultConsolePrinter
	instanceVariableNames: 'outputStream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-ConsoleTestRunner'!
!classDefinition: 'TestResultConsolePrinter class' category: #'Tools-ConsoleTestRunner'!
TestResultConsolePrinter class
	instanceVariableNames: 'stdOutCommandLine'!


!ConsoleTestRunner methodsFor: 'identification' stamp: 'HAW 5/Aug/2026, 7:25:37 pm (UTC)'!
configureAuthor

	Utilities
		setAuthorInitials: 'CTR'
		name: 'Console Test Runner'! !

!ConsoleTestRunner methodsFor: 'running' stamp: 'NPM 16/Jan/2025, 1:04:43 pm (UTC)'!
runAll: testClasses

	self runTestSuite: (self testSuiteWithAll: testClasses)! !

!ConsoleTestRunner methodsFor: 'running' stamp: 'NPM 16/Jan/2025, 1:01:22 pm (UTC)'!
runAllTests

	self runAll: TestCase allSubclasses! !

!ConsoleTestRunner methodsFor: 'running' stamp: 'NPM 16/Jan/2025, 1:14:51 pm (UTC)'!
runTestSuite: aTestSuite

	| testResult |
	self configureAuthor.
	
	testResult := aTestSuite run.

	testResult printReport.
	
	self quitInformingResult: testResult.
	! !

!ConsoleTestRunner methodsFor: 'running' stamp: 'NPM 16/Jan/2025, 12:58:26 pm (UTC)'!
testSuiteWithAll: testsClasses

	^ TestSuite
		forTestCaseClasses: testsClasses
		named: 'Console Test Runner'! !

!ConsoleTestRunner methodsFor: 'snapshot and quit' stamp: 'NPM 16/Jan/2025, 1:05:20 pm (UTC)'!
exitCodeFor: aTestResult

	^ aTestResult hasPassed
		ifTrue: [ 0 ]
		ifFalse: [ 1 ]! !

!ConsoleTestRunner methodsFor: 'snapshot and quit' stamp: 'NPM 16/Jan/2025, 1:05:37 pm (UTC)'!
quitInformingResult: result

	Smalltalk quitPrimitive: (self exitCodeFor: result)! !

!ConsoleTestRunner class methodsFor: 'running' stamp: 'NPM 16/Jan/2025, 1:08:29 pm (UTC)'!
runAllTests

	self
		new
		runAllTests! !

!TestResultConsolePrinter methodsFor: 'initialization' stamp: 'FJG 15/Sep/2019, 6:44:31 am (UTC)'!
initializeWith: aWriteStream

	outputStream _ aWriteStream
	! !

!TestResultConsolePrinter methodsFor: 'printing' stamp: 'FJG 15/Sep/2019, 6:48:28 am (UTC)'!
print: aString

	outputStream nextPutAll: aString; newLine! !

!TestResultConsolePrinter methodsFor: 'printing' stamp: 'GC 16/Sep/2019, 10:07:31 pm (UTC)'!
printError: aTestCase because: anExceptionSignal
	| exception |
	
	exception _ anExceptionSignal exception.
	
	self printInRed: ('&#16r274C; {1} has errored because: {2}' format: {aTestCase asString . exception asString })! !

!TestResultConsolePrinter methodsFor: 'printing' stamp: 'GC 16/Sep/2019, 10:07:16 pm (UTC)'!
printFailed: aTestCase because: aCause

	self printInRed: ('&#16r274C; {1} has failed because: {2}' format: {aTestCase asString . aCause asString })! !

!TestResultConsolePrinter methodsFor: 'printing' stamp: 'GC 16/Sep/2019, 10:14:03 pm (UTC)'!
printInGreen: aString

	outputStream nextPutAll: Character escape asString, '[32m'.
	self print: aString.	
	outputStream nextPutAll: Character escape asString, '[0m'.
	outputStream flush! !

!TestResultConsolePrinter methodsFor: 'printing' stamp: 'GC 16/Sep/2019, 10:13:34 pm (UTC)'!
printInRed: aString

	outputStream nextPutAll: Character escape asString, '[31m'.
	self print: aString.	
	outputStream nextPutAll: Character escape asString, '[0m'.
	outputStream flush! !

!TestResultConsolePrinter methodsFor: 'printing' stamp: 'GC 16/Sep/2019, 10:12:25 pm (UTC)'!
printPassed: aTestCase

	self printInGreen: '&#16r2713; ', aTestCase asString! !

!TestResultConsolePrinter methodsFor: 'printing' stamp: 'GC 16/Sep/2019, 10:07:59 pm (UTC)'!
printReport: aTestResult
	| failuresCount |
	
	self print: aTestResult asString.
	
	failuresCount _ (aTestResult errors, aTestResult failures) size.
	failuresCount isZero ifTrue: [
		self
			printInGreen: '--------';
		      printInGreen: 'SUCCESS';
			printInGreen: '--------'.
	] ifFalse: [
		self printInRed: '--------';
			 printInRed: failuresCount asString, ' FAILURE(S)';
			 printInRed: '--------'.
		aTestResult errors do: [:aTestCase |
			self printError: aTestCase because: aTestCase raisedError
		].
		aTestResult failures do: [:aTestCase |
			self printFailed: aTestCase because: aTestCase failureString
		]
	]! !

!TestResultConsolePrinter class methodsFor: 'instance creation' stamp: 'FJG 15/Sep/2019, 4:41:17 am (UTC)'!
stdOutCommandLine

	^ stdOutCommandLine ifNil: [
		stdOutCommandLine _ self new initializeWith: StdIOWriteStream stdout; yourself
	]! !

!TestResultConsolePrinter class methodsFor: 'stdout printing' stamp: 'FJG 15/Sep/2019, 6:24:22 am (UTC)'!
printError: aTestCase because: anExceptionSignal

	self stdOutCommandLine printError: aTestCase because: anExceptionSignal! !

!TestResultConsolePrinter class methodsFor: 'stdout printing' stamp: 'FJG 15/Sep/2019, 6:24:42 am (UTC)'!
printFailed: aTestCase because: anException

	self stdOutCommandLine printFailed: aTestCase because: anException! !

!TestResultConsolePrinter class methodsFor: 'stdout printing' stamp: 'FJG 15/Sep/2019, 6:23:05 am (UTC)'!
printPassed: aTestCase

	self stdOutCommandLine printPassed: aTestCase! !

!TestResultConsolePrinter class methodsFor: 'stdout printing' stamp: 'FJG 15/Sep/2019, 6:22:14 am (UTC)'!
printReport: aTestResult

	self stdOutCommandLine printReport: aTestResult! !

!TestResult methodsFor: '*Tools-ConsoleTestRunner' stamp: 'FJG 15/Sep/2019, 6:22:19 am (UTC)'!
printReport

	TestResultConsolePrinter printReport: self! !

!TestResult methodsFor: '*Tools-ConsoleTestRunner' stamp: 'FJG 15/Sep/2019, 6:26:17 am (UTC)'!
reportError: aTestCase because: anExceptionSignal
	
	TestResultConsolePrinter printError: aTestCase because: anExceptionSignal! !

!TestResult methodsFor: '*Tools-ConsoleTestRunner' stamp: 'FJG 15/Sep/2019, 6:25:11 am (UTC)'!
reportFailed: aTestCase because: anException
	
	TestResultConsolePrinter printFailed: aTestCase because: anException! !

!TestResult methodsFor: '*Tools-ConsoleTestRunner' stamp: 'FJG 15/Sep/2019, 6:23:35 am (UTC)'!
reportPassed: aTestCase
	
	TestResultConsolePrinter printPassed: aTestCase! !
