'From Cuis7.9 [latest update: #8149] on 25 October 2026 at 11:20:18 am'!
'Description '!
!provides: 'CodeCoverageMethodCoverage' 1 2!
!requires: 'CodeCoverage' nil nil nil!
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


!MethodCoverageCompiledMethodAnalyzer methodsFor: 'debugging-halt' stamp: ''!
initializeFor: aCompiledMethod 
	
	compiledMethod := aCompiledMethod.
	isInstalled := false.! !

!MethodCoverageCompiledMethodAnalyzer methodsFor: 'as yet unclassified' stamp: ''!
flushCache
	
	<primitive: 116>! !

!MethodCoverageCompiledMethodAnalyzer methodsFor: 'as yet unclassified' stamp: ''!
install
	
	self isInstalled ifFalse: [
		self installCompiledMethod: self.
		isInstalled := true ]! !

!MethodCoverageCompiledMethodAnalyzer methodsFor: 'as yet unclassified' stamp: ''!
installCompiledMethod: aCompiledMethod 
	
	compiledMethod methodClass
		addSelectorSilently: compiledMethod selector
		withMethod: aCompiledMethod! !

!MethodCoverageCompiledMethodAnalyzer methodsFor: 'as yet unclassified' stamp: ''!
isInstalled
	
	^ isInstalled! !

!MethodCoverageCompiledMethodAnalyzer methodsFor: 'as yet unclassified' stamp: ''!
messageSendsCount
	
	 ^ compiledMethod messageSendsCount! !

!MethodCoverageCompiledMethodAnalyzer methodsFor: 'as yet unclassified' stamp: ''!
registerNewCoverageReportBuilderUsing: aReportBuilderFactory 
	
	newReportBuilder := aReportBuilderFactory
		for: compiledMethod 
		withSourceRanges: {}.
		
	^ newReportBuilder! !

!MethodCoverageCompiledMethodAnalyzer methodsFor: 'as yet unclassified' stamp: ''!
run: aSelector with: arguments in: aReceiver

	| result |
	
	newReportBuilder markAsExecuted.
	
	result := compiledMethod
		valueWithReceiver: aReceiver
		arguments: arguments.
	
	self uninstall.
	
	^ result! !

!MethodCoverageCompiledMethodAnalyzer methodsFor: 'as yet unclassified' stamp: ''!
uninstall

	isInstalled ifTrue: [
		self installCompiledMethod: compiledMethod.
		isInstalled := false ]! !

!MethodCoverageCompiledMethodAnalyzer class methodsFor: 'as yet unclassified' stamp: ''!
for: aCompiledMethod 
	
	^ self
		new
		initializeFor: aCompiledMethod! !

!MethodCoverageCompiledMethodAnalyzer class methodsFor: 'as yet unclassified' stamp: ''!
installOn: aCompiledMethod 

	"Convenience method to create an instance of myself and install it in one-shot."
	
	^ (self for: aCompiledMethod) install! !

!MethodCoverageCompiledMethodAnalyzer class methodsFor: 'as yet unclassified' stamp: ''!
uninstallAll: compiledMethodAnalyzers 
	
	"Convenience method to uninstall all compiledMethodAnalyzers"
	
	compiledMethodAnalyzers do: [ :compiledMethodAnalyzer | compiledMethodAnalyzer uninstall ]
! !

!MethodCoverageCompiledMethodAnalyzer class methodsFor: 'as yet unclassified' stamp: ''!
uninstallAllInstances
	
	"Uninstall all existing instances of myself.
	Useful during development or testing, where an exception can leave dangling instances around.
	
	self uninstallAllInstances.
	"
	
	self uninstallAll: self allInstances! !

!CodeCoverageAnalyzer class methodsFor: '*CodeCoverageMethodCoverage' stamp: ''!
toAnalyzeAllWithMethodCoverage: compiledMethods
	
	^ self
		toAnalyzeAll: compiledMethods
		with: MethodCoverageCompiledMethodAnalyzer
		creatingReportBuildersWith: DecisionConditionCoverageReportBuilder! !
