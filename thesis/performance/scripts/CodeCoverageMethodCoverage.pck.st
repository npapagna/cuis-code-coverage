'From Cuis7.7 [latest update: #7880] on 22 April 2026 at 10:47:03 am'!
'Description '!
!provides: 'CodeCoverageMethodCoverage' 1 1!
SystemOrganization addCategory: #CodeCoverageMethodCoverage!


!classDefinition: #MethodCoverageCompiledMethodAnalyzer category: #CodeCoverageMethodCoverage!
Object subclass: #MethodCoverageCompiledMethodAnalyzer
	instanceVariableNames: 'compiledMethod isInstalled newReportBuilder'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageMethodCoverage'!
!classDefinition: 'MethodCoverageCompiledMethodAnalyzer class' category: #CodeCoverageMethodCoverage!
MethodCoverageCompiledMethodAnalyzer class
	instanceVariableNames: ''!


!MethodCoverageCompiledMethodAnalyzer methodsFor: 'debugging-halt' stamp: 'NPM 22/Apr/2026 10:14:13'!
initializeFor: aCompiledMethod 
	
	compiledMethod := aCompiledMethod.
	isInstalled := false.! !

!MethodCoverageCompiledMethodAnalyzer methodsFor: 'as yet unclassified' stamp: 'NPM 22/Apr/2026 10:10:07'!
flushCache
	
	<primitive: 116>! !

!MethodCoverageCompiledMethodAnalyzer methodsFor: 'as yet unclassified' stamp: 'NPM 22/Apr/2026 10:41:09'!
install
	
	self isInstalled ifFalse: [
		self installCompiledMethod: self.
		isInstalled := true ]! !

!MethodCoverageCompiledMethodAnalyzer methodsFor: 'as yet unclassified' stamp: 'NPM 22/Apr/2026 10:14:29'!
installCompiledMethod: aCompiledMethod 
	
	compiledMethod methodClass
		addSelectorSilently: compiledMethod selector
		withMethod: aCompiledMethod! !

!MethodCoverageCompiledMethodAnalyzer methodsFor: 'as yet unclassified' stamp: 'NPM 22/Apr/2026 10:14:34'!
isInstalled
	
	^ isInstalled! !

!MethodCoverageCompiledMethodAnalyzer methodsFor: 'as yet unclassified' stamp: 'NPM 22/Apr/2026 10:16:35'!
messageSendsCount
	
	 ^ compiledMethod messageSendsCount! !

!MethodCoverageCompiledMethodAnalyzer methodsFor: 'as yet unclassified' stamp: 'NPM 22/Apr/2026 10:08:34'!
registerNewCoverageReportBuilderUsing: aReportBuilderFactory 
	
	newReportBuilder := aReportBuilderFactory
		for: compiledMethod 
		withSourceRanges: {}.
		
	^ newReportBuilder! !

!MethodCoverageCompiledMethodAnalyzer methodsFor: 'as yet unclassified' stamp: 'NPM 22/Apr/2026 10:14:50'!
run: aSelector with: arguments in: aReceiver

	| result |
	
	newReportBuilder markAsExecuted.
	
	result := compiledMethod
		valueWithReceiver: aReceiver
		arguments: arguments.
	
	self uninstall.
	
	^ result! !

!MethodCoverageCompiledMethodAnalyzer methodsFor: 'as yet unclassified' stamp: 'NPM 22/Apr/2026 10:41:23'!
uninstall

	isInstalled ifTrue: [
		self installCompiledMethod: compiledMethod.
		isInstalled := false ]! !

!MethodCoverageCompiledMethodAnalyzer class methodsFor: 'as yet unclassified' stamp: 'NPM 22/Apr/2026 10:06:37'!
for: aCompiledMethod 
	
	^ self
		new
		initializeFor: aCompiledMethod! !

!MethodCoverageCompiledMethodAnalyzer class methodsFor: 'as yet unclassified' stamp: 'NPM 22/Apr/2026 10:06:23'!
installOn: aCompiledMethod 

	"Convenience method to create an instance of myself and install it in one-shot."
	
	^ (self for: aCompiledMethod) install! !

!MethodCoverageCompiledMethodAnalyzer class methodsFor: 'as yet unclassified' stamp: 'NPM 22/Apr/2026 10:09:35'!
uninstallAll: compiledMethodAnalyzers 
	
	"Convenience method to uninstall all compiledMethodAnalyzers"
	
	compiledMethodAnalyzers do: [ :compiledMethodAnalyzer | compiledMethodAnalyzer uninstall ]
! !

!MethodCoverageCompiledMethodAnalyzer class methodsFor: 'as yet unclassified' stamp: 'NPM 22/Apr/2026 10:17:03'!
uninstallAllInstances
	
	"Uninstall all existing instances of myself.
	Useful during development or testing, where an exception can leave dangling instances around.
	
	self uninstallAllInstances.
	"
	
	self uninstallAll: self allInstances! !

!CodeCoverageAnalyzer class methodsFor: '*CodeCoverageMethodCoverage' stamp: 'NPM 22/Apr/2026 10:42:29'!
toAnalyzeAllWithMethodCoverage: compiledMethods
	
	^ self
		toAnalyzeAll: compiledMethods
		with: MethodCoverageCompiledMethodAnalyzer
		creatingReportBuildersWith: DecisionConditionCoverageReportBuilder! !
