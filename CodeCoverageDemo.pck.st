'From Cuis7.9 [latest update: #8149] on 29 August 2026 at 11:11:39 am'!
'Description '!
!provides: 'CodeCoverageDemo' 1 11!
SystemOrganization addCategory: #CodeCoverageDemo!


!classDefinition: #ImageSlide category: #CodeCoverageDemo!
ProtoObject subclass: #ImageSlide
	instanceVariableNames: 'image toolbar'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'ImageSlide class' category: #CodeCoverageDemo!
ImageSlide class
	instanceVariableNames: ''!

!classDefinition: #BasicDecisionConditionCoverageReportBuilder category: #CodeCoverageDemo!
DecisionConditionCoverageReportBuilder subclass: #BasicDecisionConditionCoverageReportBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'BasicDecisionConditionCoverageReportBuilder class' category: #CodeCoverageDemo!
BasicDecisionConditionCoverageReportBuilder class
	instanceVariableNames: ''!

!classDefinition: #ConditionCoverageReportBuilder category: #CodeCoverageDemo!
DecisionConditionCoverageReportBuilder subclass: #ConditionCoverageReportBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'ConditionCoverageReportBuilder class' category: #CodeCoverageDemo!
ConditionCoverageReportBuilder class
	instanceVariableNames: ''!

!classDefinition: #DecisionCoverageReportBuilder category: #CodeCoverageDemo!
CompiledMethodCoverageTracker subclass: #DecisionCoverageReportBuilder
	instanceVariableNames: 'coveredNonBooleanSourceRanges compiledMethod analyzedSourceRanges booleanValuesByDeclaration usagesByDeclaration compiledMethodWasExecuted sourceRanges2 decisionReceverRanges decisionSelectors'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'DecisionCoverageReportBuilder class' category: #CodeCoverageDemo!
DecisionCoverageReportBuilder class
	instanceVariableNames: ''!

!classDefinition: #LineCoverageReportBuilder category: #CodeCoverageDemo!
CompiledMethodCoverageTracker subclass: #LineCoverageReportBuilder
	instanceVariableNames: 'compiledMethod analyzedSourceRanges compiledMethodWasExecuted coveredSourceRanges'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'LineCoverageReportBuilder class' category: #CodeCoverageDemo!
LineCoverageReportBuilder class
	instanceVariableNames: ''!

!classDefinition: #MethodCoverageReportBuilder category: #CodeCoverageDemo!
CompiledMethodCoverageTracker subclass: #MethodCoverageReportBuilder
	instanceVariableNames: 'compiledMethod analyzedSourceRanges compiledMethodWasExecuted'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'MethodCoverageReportBuilder class' category: #CodeCoverageDemo!
MethodCoverageReportBuilder class
	instanceVariableNames: ''!

!classDefinition: #StatementCoverageReportBuilder category: #CodeCoverageDemo!
CompiledMethodCoverageTracker subclass: #StatementCoverageReportBuilder
	instanceVariableNames: 'compiledMethod analyzedSourceRanges compiledMethodWasExecuted coveredSourceRanges'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'StatementCoverageReportBuilder class' category: #CodeCoverageDemo!
StatementCoverageReportBuilder class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageArgumentsBuilder category: #CodeCoverageDemo!
Object subclass: #CodeCoverageArgumentsBuilder
	instanceVariableNames: 'booleanArgument anotherBooleanArgument'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'CodeCoverageArgumentsBuilder class' category: #CodeCoverageDemo!
CodeCoverageArgumentsBuilder class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageExamples category: #CodeCoverageDemo!
Object subclass: #CodeCoverageExamples
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'CodeCoverageExamples class' category: #CodeCoverageDemo!
CodeCoverageExamples class
	instanceVariableNames: ''!

!classDefinition: #ConditionCoverageArgumentsBuilder category: #CodeCoverageDemo!
Object subclass: #ConditionCoverageArgumentsBuilder
	instanceVariableNames: 'booleanArgument anotherBooleanArgument'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'ConditionCoverageArgumentsBuilder class' category: #CodeCoverageDemo!
ConditionCoverageArgumentsBuilder class
	instanceVariableNames: ''!

!classDefinition: #DecisionConditionCoverageArgumentsBuilder category: #CodeCoverageDemo!
Object subclass: #DecisionConditionCoverageArgumentsBuilder
	instanceVariableNames: 'booleanArgument anotherBooleanArgument yetAnotherBooleanArgument'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'DecisionConditionCoverageArgumentsBuilder class' category: #CodeCoverageDemo!
DecisionConditionCoverageArgumentsBuilder class
	instanceVariableNames: ''!

!classDefinition: #DecisionCoverageArgumentsBuilder category: #CodeCoverageDemo!
Object subclass: #DecisionCoverageArgumentsBuilder
	instanceVariableNames: 'booleanArgument'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'DecisionCoverageArgumentsBuilder class' category: #CodeCoverageDemo!
DecisionCoverageArgumentsBuilder class
	instanceVariableNames: ''!

!classDefinition: #Smalltalks2022Presentation category: #CodeCoverageDemo!
Object subclass: #Smalltalks2022Presentation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'Smalltalks2022Presentation class' category: #CodeCoverageDemo!
Smalltalks2022Presentation class
	instanceVariableNames: ''!

!classDefinition: #CodeEditorSlide category: #CodeCoverageDemo!
LayoutMorph subclass: #CodeEditorSlide
	instanceVariableNames: 'codeEditor compiledMethod reportBuilderFactory selector receiver toolbar2 contentPane testCases2 testCasesList argumentInputs2 argumentsBuilder'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'CodeEditorSlide class' category: #CodeCoverageDemo!
CodeEditorSlide class
	instanceVariableNames: ''!

!classDefinition: #PresentationWindow category: #CodeCoverageDemo!
SystemWindow subclass: #PresentationWindow
	instanceVariableNames: 'slides currentSlide originalTitle targetSlide'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'PresentationWindow class' category: #CodeCoverageDemo!
PresentationWindow class
	instanceVariableNames: ''!


!ImageSlide methodsFor: 'initialization' stamp: 'NPM 11/Nov/2022, 9:49:00 am (UTC)'!
initializeForm: aForm 

	self buildToolbar .
	
	image := (ImageMorph new image: (aForm )).
	
	self addMorph: image.
	! !

!ImageSlide methodsFor: 'initialization' stamp: 'NPM 11/Nov/2022, 9:53:29 am (UTC)'!
layoutSubmorphs

	| aForm newImage scale xScale yScale |
	
	toolbar
		morphPosition: 0@0;
		morphExtent: (self morphWidth @ 20).
	
	aForm := image form .
	xScale := self morphExtent x / aForm width.
	yScale:= (self morphExtent y - 20) / aForm height.
	scale := xScale max: yScale..
	newImage := ImageMorph new image: (aForm magnifyBy: scale).
	
	
	self replaceSubmorph: image by: newImage.
	image := newImage.
	newImage morphPosition: 0@(toolbar morphHeight).
	
	self layoutNeeded: false! !

!ImageSlide methodsFor: 'initialization' stamp: 'NPM 11/Nov/2022, 9:47:34 am (UTC)'!
layoutSubmorphs2

	| aForm newImage scale xScale yScale |
	aForm := image form .
	xScale := self morphExtent x / aForm width.
	yScale:= self morphExtent y / aForm height.
	scale := xScale max: yScale..
	newImage := ImageMorph new image: (aForm magnifyBy: scale).
	
	self replaceSubmorph: image by: newImage.
	image := newImage.
	
	self layoutNeeded: false! !

!ImageSlide methodsFor: 'as yet unclassified' stamp: 'NPM 11/Nov/2022, 9:49:28 am (UTC)'!
buildToolbar

	toolbar := LayoutMorph newRow doAdoptWidgetsColor;
		color: Color veryLightGray;
		separation: 10.
		toolbar addMorph: ((PluggableButtonMorph model: self action: #previousSlide label: '<') color: Color veryVeryLightGray).
	toolbar addMorph: ((PluggableButtonMorph model: self action: #nextSlide label: '>') color: Color veryVeryLightGray).

	^ self addMorph: toolbar! !

!ImageSlide methodsFor: 'as yet unclassified' stamp: 'NPM 11/Nov/2022, 9:52:47 am (UTC)'!
clipsSubmorphs

	^ true! !

!ImageSlide class methodsFor: 'instance creation' stamp: 'NPM 11/Nov/2022, 9:48:52 am (UTC)'!
form: aForm 
	
	^self new initializeForm: aForm ! !

!BasicDecisionConditionCoverageReportBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 9:02:31 pm (UTC)'!
registerBoolean: aBoolean usedAt: usageSourceRange declaredAt: declarationSourceRange 
	
	self registerBoolean: aBoolean declaredAt: usageSourceRange.
	self coverAsNonBoolean: declarationSourceRange ! !

!ConditionCoverageReportBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:44:16 pm (UTC)'!
coverAll: sourceRanges fromSending: aSelector to: aReceiver 
	
	self coverAll: sourceRanges! !

!ConditionCoverageReportBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:44:24 pm (UTC)'!
coverAll: sourceRanges fromSending: aSelector to: anObject withResult: result 

	self coverAll: sourceRanges by: result! !

!ConditionCoverageReportBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 9:01:19 pm (UTC)'!
registerBoolean: aBoolean usedAt: usageSourceRange declaredAt: declarationSourceRange 
	
	self registerBoolean: aBoolean declaredAt: usageSourceRange.
	self coverAsNonBoolean: declarationSourceRange ! !

!DecisionCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
collectWithUsages: sourceRanges
	
	^ sourceRanges
		inject: Set new
		into: [ :result :sourceRange |
			result
				add: sourceRange;
				addAll: (self usagesOf: sourceRange);
				yourself ]! !

!DecisionCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
coveredSourceRanges
	
	^ self fullyCoveredSourceRanges, self partiallyCoveredBooleanRanges! !

!DecisionCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
fulllyCoveredNonBooleanSourceRanges
	
	^ self collectWithUsages: coveredNonBooleanSourceRanges! !

!DecisionCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
fullyCoveredBooleanSourceRanges
	
	"A fully-covered boolean source range is one that referenced both true and false."
	
	^ self selectBooleanSourceRanges: [ :coveredValues | coveredValues size = 2 ]! !

!DecisionCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
fullyCoveredSourceRanges

	^ self fulllyCoveredNonBooleanSourceRanges, self fullyCoveredBooleanSourceRanges! !

!DecisionCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
partiallyCoveredBooleanRanges
	
	"A partially-covered boolean source range is one that referenced either true or false."
	
	^ self selectBooleanSourceRanges: [ :coveredValues | coveredValues size = 1 ]! !

!DecisionCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
selectBooleanSourceRanges: aCondition
	
	"Select the boolean source range declarations passing the covered boolean values referenced by them to aCondition.
	Return both the declarations that satisfies aCondition and their usages."
	
	| selectedDeclarations |
	selectedDeclarations := booleanValuesByDeclaration associations
		select: [ :sourceRangeAndCoveredValues | aCondition value: sourceRangeAndCoveredValues value ]
		thenCollect: [ :sourceRangeAndCoveredValues | sourceRangeAndCoveredValues key ].
	
	^ self collectWithUsages: selectedDeclarations! !

!DecisionCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
uncoveredSourceRanges

	^ analyzedSourceRanges difference: self coveredSourceRanges! !

!DecisionCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
usagesOf: aDeclaration

	^ usagesByDeclaration
		at: aDeclaration
		ifAbsent: [ Set new ]! !

!DecisionCoverageReportBuilder methodsFor: 'evaluating' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
value

	^ CodeCoverageReport
		for: compiledMethod
		executed: compiledMethodWasExecuted
		with: self consolidateCoverageResults
		messages: self messages.! !

!DecisionCoverageReportBuilder methodsFor: 'initialization' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
initializeFor: aCompiledMethod with: aCollecitonOfAnalizedSourceRanges 

	compiledMethod := aCompiledMethod.
	analyzedSourceRanges := aCollecitonOfAnalizedSourceRanges.
	coveredNonBooleanSourceRanges := Set new.
	booleanValuesByDeclaration := Dictionary new.
	usagesByDeclaration := Dictionary new.
	compiledMethodWasExecuted := false.
	decisionSelectors := #(#ifTrue: #ifFalse: #ifTrue:ifFalse: #ifFalse:ifTrue:).! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 9/Nov/2022, 5:34:39 am (UTC)'!
consolidateCoverageResults
	
	| coverageRatioBySourceRange |
	coverageRatioBySourceRange := Dictionary new.

	(self fullyCoveredSourceRanges)
		do: [ :sourceRange | coverageRatioBySourceRange at: sourceRange put: 1 ].
		
	self partiallyCoveredBooleanRanges
		do: [ :sourceRange | coverageRatioBySourceRange at: sourceRange put: 0.5 ].
		
	(self uncoveredSourceRanges)
		do: [ :sourceRange | coverageRatioBySourceRange at: sourceRange put: 0 ].
	
	^ coverageRatioBySourceRange! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 6:35:15 am (UTC)'!
cover: aSourceRange declaredAt: declarationSourceRange by: anObject

	"Register thatanObject covered aSourceRange and its declaration at declarationSourceRange."
	
	self
		coverNonBooleanUsage: aSourceRange
		of: declarationSourceRange.
			
	^ anObject! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
coverAll: sourceRanges

	self coverAsNonBooleanAll: sourceRanges! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
coverAll: sourceRanges by: anObject 
	
	(anObject isKindOf: Boolean)
		ifTrue: [ self registerBoolean: anObject declaredAtAll: sourceRanges ]
		ifFalse: [ self coverAsNonBooleanAll: sourceRanges ].
		
	^ anObject! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
coverAll: sourceRanges byLiteralOrPseudoVariable: anObject 

	"Register that anObject covered sourceRanges"
	
	"Literal or pseudo-variables should not be covered as boolean because
	true would always be covered 50% when it should be 100% (it is the true pseudo-variable)"
	self coverAsNonBooleanAll: sourceRanges.
	
	^ anObject! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
coverAll: sourceRanges fromSending: aSelector to: aReceiver 
	
	(self isDecisionSelector: aSelector )
		ifTrue: [
			self
				coverDecisionMessageSendTo: aReceiver
				atAll: sourceRanges ]
		ifFalse: [
			self coverAll: sourceRanges  ]! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 8/Nov/2022, 5:07:27 am (UTC)'!
coverAll: sourceRanges fromSending: aSelector to: anObject withResult: result 

	(self isDecisionSelector: aSelector )
		ifTrue: [
			self
				coverDecisionMessageSendTo: anObject
				atAll: sourceRanges ]
		ifFalse: [
			self coverAsNonBooleanAll: sourceRanges ]! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 6:33:32 am (UTC)'!
coverAsNonBoolean: aSourceRange

	coveredNonBooleanSourceRanges add: aSourceRange.! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
coverAsNonBooleanAll: sourceRanges
	
	sourceRanges do: [ :sourceRange | self coverAsNonBoolean: sourceRange ]! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
coverDecisionMessageSendTo: aReceiver atAll: sourceRanges 
	
	coveredNonBooleanSourceRanges
		removeAllFoundIn: sourceRanges.
		
	self
		registerBoolean: aReceiver
		declaredAtAll: sourceRanges ! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
coverNonBooleanUsage: usageSourceRange of: declarationSourceRange 
	
	"Consider both usageSourceRange and declarationSourceRange as covered.

	This is used, for instance, when a temporary variable is assigned:
	    - the temporary variable in the assignment is found at usageSourceRange.
	    - the temporary variable declaration is found at  declarationSourceRange."

	self
		registerUsage: usageSourceRange of: declarationSourceRange;
		coverAsNonBoolean: declarationSourceRange.! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
markAsExecuted
	
	compiledMethodWasExecuted := true.! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
messages
	
	^ booleanValuesByDeclaration
		select: [ :coveredValues | coveredValues size = 1 ]
		thenCollect: [ :coveredValues |
			| exercisedTestCase missingTestCase |
			exercisedTestCase := coveredValues anyOne.
			missingTestCase := exercisedTestCase ifTrue: [ false ] ifFalse: [ true ].
			String newLineString,
			'Code Coverge: missing test case: ', missingTestCase asString, '. Only exercised with ',
			exercisedTestCase asString, '.' ]! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 9/Nov/2022, 5:34:34 am (UTC)'!
registerBoolean: aValue declaredAt: declarationSourceRange

	"Consider declarationSourceRange as a covered boolean source range."

	"If declarationSourceRange is currently considered non-boolean (e.g. it is related to non-boolean objects),
	don't consider it a boolean declaration."
	(coveredNonBooleanSourceRanges includes: declarationSourceRange)
		ifTrue: [ ^ self coverAsNonBoolean: declarationSourceRange ].
		
	(booleanValuesByDeclaration at: declarationSourceRange ifAbsentPut: [ Set new ])
		add: aValue! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
registerBoolean: aBoolean declaredAtAll: declarationSourceRanges

	"Consider declarationSourceRanges as covered boolean source ranges.
	
	An example of a boolean having multilple declarations is a keyword message that returned the boolean value:
	
	self foo: 1 bar: 2 baz: 3.
		
	Assuming that #foo:bar:baz: returns a boolean, it is considered to be declared at 3 source ranges: one for each keyword in the selector."

	declarationSourceRanges do: [ :declarationSourceRange |
		self registerBoolean: aBoolean declaredAt: declarationSourceRange ]! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
registerUsage: aSourceRange of: declarationSourceRange

	(usagesByDeclaration at: declarationSourceRange ifAbsentPut: [ Set new ])
		add: aSourceRange! !

!DecisionCoverageReportBuilder methodsFor: 'testing' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
isDecisionSelector: aSelector  
	
	^ decisionSelectors includes: aSelector! !

!DecisionCoverageReportBuilder class methodsFor: 'instance creation' stamp: 'NPM 7/Nov/2022, 6:31:01 am (UTC)'!
for: aCompiledMethod withSourceRanges: sourceRanges
	
	^ self
		new
		initializeFor: aCompiledMethod
		with: sourceRanges! !

!LineCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 3/Nov/2022, 3:27:35 am (UTC)'!
compiledMethod

	^ compiledMethod! !

!LineCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 3/Nov/2022, 3:27:35 am (UTC)'!
consolidateCoverageResults

	^ analyzedSourceRanges
		inject: Dictionary new
		into: [ :coverageRatioBySourceRange :aSourceRange |
			coverageRatioBySourceRange
				at: aSourceRange
				put: (self coverageRatioFor: aSourceRange).
				
			coverageRatioBySourceRange ]! !

!LineCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 7/Nov/2022, 5:56:52 am (UTC)'!
cover: aSourceRange

	| end range sourceCode x j |
	sourceCode := compiledMethod sourceCode.

	end _ sourceCode indexOf: Character newLineCharacter startingAt: aSourceRange first ifAbsent: [ sourceCode size ].
	x _ sourceCode copyFrom: aSourceRange first to: end.
	range _ aSourceRange first to: end.
	
	j := analyzedSourceRanges select: [ :r | range includesAllOf: r ].
	
	coveredSourceRanges addAll: (j)! !

!LineCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 7/Nov/2022, 5:55:30 am (UTC)'!
coverageRatioFor: aSourceRange 
	
	^ (coveredSourceRanges includes: aSourceRange)
		ifTrue: [ 1.0 ]
		ifFalse: [ 0.0 ]! !

!LineCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 3/Nov/2022, 3:27:35 am (UTC)'!
messageCategory
	
	^ compiledMethod category! !

!LineCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 3/Nov/2022, 3:27:35 am (UTC)'!
methodClass
	
	^ compiledMethod methodClass! !

!LineCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 3/Nov/2022, 3:27:35 am (UTC)'!
systemCategory
	
	^ compiledMethod
		methodClass
		category ! !

!LineCoverageReportBuilder methodsFor: 'evaluating' stamp: 'NPM 6/Nov/2022, 3:20:02 pm (UTC)'!
value

	^ CodeCoverageReport
		for: compiledMethod
		executed: compiledMethodWasExecuted
		with: self consolidateCoverageResults messages: nil.! !

!LineCoverageReportBuilder methodsFor: 'initialization' stamp: 'NPM 7/Nov/2022, 5:55:30 am (UTC)'!
initializeFor: aCompiledMethod with: aCollecitonOfAnalizedSourceRanges 
	
	compiledMethod := aCompiledMethod.
	analyzedSourceRanges := aCollecitonOfAnalizedSourceRanges.
	compiledMethodWasExecuted := false.
	coveredSourceRanges _ Set new.! !

!LineCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 6:43:07 am (UTC)'!
cover: aSourceRange declaredAt: declarationSourceRange by: anObject 
	
	self cover: aSourceRange.
	self cover: declarationSourceRange.
	
	^ anObject! !

!LineCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 5:40:36 am (UTC)'!
coverAll: sourceRanges 
	
	sourceRanges do: [ :r | self cover: r ].! !

!LineCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 5:56:29 am (UTC)'!
coverAll: sourceRanges by: anObject 

	self coverAll: sourceRanges.

	^ anObject! !

!LineCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 5:40:36 am (UTC)'!
coverAll: sourceRanges byLiteralOrPseudoVariable: anObject 
	
	sourceRanges do: [ :r |  self cover: r ].
	
	^ anObject! !

!LineCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 5:57:39 am (UTC)'!
coverAll: sourceRanges fromSending: aSelector to: aReceiver 
	
	self coverAll: sourceRanges.! !

!LineCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 5:57:18 am (UTC)'!
coverAll: sourceRanges fromSending: aSelector to: aReceiver withResult: aResult 

	self coverAll: sourceRanges! !

!LineCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 3/Nov/2022, 3:27:35 am (UTC)'!
markAsExecuted
	
	compiledMethodWasExecuted := true.! !

!LineCoverageReportBuilder class methodsFor: 'instance creation' stamp: 'NPM 3/Nov/2022, 3:27:35 am (UTC)'!
for: aCompiledMethod withSourceRanges: sourceRanges
	
	^ self
		new
		initializeFor: aCompiledMethod
		with: sourceRanges! !

!MethodCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 3/Nov/2022, 2:47:58 am (UTC)'!
compiledMethod

	^ compiledMethod! !

!MethodCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 3/Nov/2022, 3:17:37 am (UTC)'!
coverageRatioFor: aSourceRange 
	
	^ compiledMethodWasExecuted
		ifTrue: [ 1.0 ]
		ifFalse: [ 0.0 ]! !

!MethodCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 3/Nov/2022, 2:48:22 am (UTC)'!
messageCategory
	
	^ compiledMethod category! !

!MethodCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 3/Nov/2022, 2:48:11 am (UTC)'!
methodClass
	
	^ compiledMethod methodClass! !

!MethodCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 3/Nov/2022, 2:48:37 am (UTC)'!
systemCategory
	
	^ compiledMethod
		methodClass
		category ! !

!MethodCoverageReportBuilder methodsFor: 'evaluating' stamp: 'NPM 7/Nov/2022, 5:22:57 am (UTC)'!
value

	^ CodeCoverageReport
		for: compiledMethod
		executed: compiledMethodWasExecuted
		with: self consolidateCoverageResults
		messages: Dictionary new.! !

!MethodCoverageReportBuilder methodsFor: 'initialization' stamp: 'NPM 3/Nov/2022, 3:13:27 am (UTC)'!
initializeFor: aCompiledMethod with: aCollecitonOfAnalizedSourceRanges 
	
	compiledMethod := aCompiledMethod.
	analyzedSourceRanges := aCollecitonOfAnalizedSourceRanges.
	compiledMethodWasExecuted := false.! !

!MethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 3/Nov/2022, 3:17:01 am (UTC)'!
consolidateCoverageResults

	^ analyzedSourceRanges
		inject: Dictionary new
		into: [ :coverageRatioBySourceRange :aSourceRange |
			coverageRatioBySourceRange
				at: aSourceRange
				put: (self coverageRatioFor: aSourceRange).
				
			coverageRatioBySourceRange ]! !

!MethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 3/Nov/2022, 3:02:19 am (UTC)'!
cover: aSourceRange declaredAt: declarationSourceRange by: anObject 
	
	^ anObject! !

!MethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 5:20:21 am (UTC)'!
coverAll: sourceRanges by: anObject 

	^ anObject! !

!MethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 3/Nov/2022, 3:01:59 am (UTC)'!
coverAll: sourceRanges byLiteralOrPseudoVariable: anObject 
	
	^ anObject! !

!MethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 5:25:11 am (UTC)'!
coverAll: sourceRanges fromSending: aSelector to: aReceiver 
! !

!MethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 5:20:44 am (UTC)'!
coverAll: sourceRanges fromSending: aSelector to: aReceiver withResult: aResult 

	! !

!MethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 3/Nov/2022, 2:59:19 am (UTC)'!
markAsExecuted
	
	compiledMethodWasExecuted := true.! !

!MethodCoverageReportBuilder class methodsFor: 'instance creation' stamp: 'NPM 3/Nov/2022, 2:46:59 am (UTC)'!
for: aCompiledMethod withSourceRanges: sourceRanges
	
	^ self
		new
		initializeFor: aCompiledMethod
		with: sourceRanges! !

!StatementCoverageReportBuilder methodsFor: 'initialization' stamp: 'NPM 7/Nov/2022, 5:54:58 am (UTC)'!
initializeFor: aCompiledMethod with: aCollecitonOfAnalizedSourceRanges 
	
	compiledMethod := aCompiledMethod.
	analyzedSourceRanges := aCollecitonOfAnalizedSourceRanges.
	compiledMethodWasExecuted := false.
	coveredSourceRanges _ Set new.! !

!StatementCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 5:40:36 am (UTC)'!
cover: aSourceRange declaredAt: declarationSourceRange by: anObject 
	
	self cover: aSourceRange.
	self cover: declarationSourceRange.
	^ anObject! !

!StatementCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 5:40:50 am (UTC)'!
coverAll: sourceRanges 
	
	sourceRanges do: [ :sourceRange | self cover: sourceRange ].! !

!StatementCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 5:45:49 am (UTC)'!
coverAll: sourceRanges by: anObject 

	self coverAll: sourceRanges.

	^ anObject! !

!StatementCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 5:40:36 am (UTC)'!
coverAll: sourceRanges byLiteralOrPseudoVariable: anObject 
	
	sourceRanges do: [ :r |  self cover: r ].
	
	^ anObject! !

!StatementCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 5:46:09 am (UTC)'!
coverAll: sourceRanges fromSending: aSelector to: aReceiver 
	
	self coverAll: sourceRanges.! !

!StatementCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 5:41:22 am (UTC)'!
coverAll: sourceRanges fromSending: aSelector to: aReceiver withResult: aResult 

	self coverAll: sourceRanges! !

!StatementCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 7/Nov/2022, 5:40:21 am (UTC)'!
hingAmount! !

!StatementCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 3/Nov/2022, 3:55:54 am (UTC)'!
markAsExecuted
	
	compiledMethodWasExecuted := true.! !

!StatementCoverageReportBuilder methodsFor: 'evaluating' stamp: 'NPM 6/Nov/2022, 3:20:02 pm (UTC)'!
value

	^ CodeCoverageReport
		for: compiledMethod
		executed: compiledMethodWasExecuted
		with: self consolidateCoverageResults messages: nil.! !

!StatementCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 3/Nov/2022, 3:55:54 am (UTC)'!
compiledMethod

	^ compiledMethod! !

!StatementCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 3/Nov/2022, 3:55:54 am (UTC)'!
consolidateCoverageResults

	^ analyzedSourceRanges
		inject: Dictionary new
		into: [ :coverageRatioBySourceRange :aSourceRange |
			coverageRatioBySourceRange
				at: aSourceRange
				put: (self coverageRatioFor: aSourceRange).
				
			coverageRatioBySourceRange ]! !

!StatementCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 7/Nov/2022, 5:54:58 am (UTC)'!
cover: aSourceRange

	| a |
	a _ compiledMethod sourceCode copyFrom: aSourceRange first to: aSourceRange last.

	coveredSourceRanges add: aSourceRange ! !

!StatementCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 7/Nov/2022, 5:54:58 am (UTC)'!
coverageRatioFor: aSourceRange 
	
	^ (coveredSourceRanges includes: aSourceRange)
		ifTrue: [ 1.0 ]
		ifFalse: [ 0.0 ]! !

!StatementCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 3/Nov/2022, 3:55:54 am (UTC)'!
messageCategory
	
	^ compiledMethod category! !

!StatementCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 3/Nov/2022, 3:55:54 am (UTC)'!
methodClass
	
	^ compiledMethod methodClass! !

!StatementCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 3/Nov/2022, 3:55:54 am (UTC)'!
systemCategory
	
	^ compiledMethod
		methodClass
		category ! !

!StatementCoverageReportBuilder class methodsFor: 'instance creation' stamp: 'NPM 3/Nov/2022, 3:55:54 am (UTC)'!
for: aCompiledMethod withSourceRanges: sourceRanges
	
	^ self
		new
		initializeFor: aCompiledMethod
		with: sourceRanges! !

!CodeCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 9:15:46 pm (UTC)'!
aBooleanArgument
	
	booleanArgument ifNil: [ booleanArgument := true ].
	
	^ booleanArgument asString! !

!CodeCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 9:15:46 pm (UTC)'!
aBooleanArgument: aString
	
	booleanArgument := aString = 'true' ifTrue: [ true ] ifFalse: [ false ].! !

!CodeCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/Nov/2022, 9:35:52 am (UTC)'!
anotherBooleanArgument
	
	anotherBooleanArgument ifNil: [ anotherBooleanArgument := true ].
	
	^ anotherBooleanArgument asString! !

!CodeCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/Nov/2022, 9:35:58 am (UTC)'!
anotherBooleanArgument: aString
	
	anotherBooleanArgument := aString = 'true' ifTrue: [ true ] ifFalse: [ false ].! !

!CodeCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/Nov/2022, 9:36:39 am (UTC)'!
buildArguments
	
	^ { booleanArgument. anotherBooleanArgument }! !

!CodeCoverageExamples methodsFor: 'coverage criteria examples' stamp: 'NPM 11/Nov/2022, 9:37:19 am (UTC)'!
codeCoverageTest: aBoolean and: anotherBoolean
	
	| temp1 temp2 temp3 |
	temp1 := aBoolean.
	temp2 := aBoolean and: true.
	
	[ :unused | temp1 ].
	[ :arg | arg value ] value: 1.
	
	0 isZero.
	
	! !

!CodeCoverageExamples methodsFor: 'coverage criteria examples' stamp: 'NPM 10/Nov/2022, 8:39:49 pm (UTC)'!
conditionTest: aBoolean or: anotherBoolean

	(aBoolean or: anotherBoolean)
		ifTrue: [ 1 ]
		ifFalse: [ 2 ]! !

!CodeCoverageExamples methodsFor: 'coverage criteria examples' stamp: 'NPM 10/Nov/2022, 9:07:14 pm (UTC)'!
decisionCondition2Test: aBoolean or: anotherBoolean or: yetAnotherBoolean
	
	((aBoolean or: anotherBoolean) or: yetAnotherBoolean)
		ifTrue: [ 1 ]
		ifFalse: [ 2 ]! !

!CodeCoverageExamples methodsFor: 'coverage criteria examples' stamp: 'NPM 10/Nov/2022, 8:53:17 pm (UTC)'!
decisionConditionTest: aBoolean or: anotherBoolean or: yetAnotherBoolean
	
	((aBoolean or: anotherBoolean) or: yetAnotherBoolean)
		ifTrue: [ 1 ]
		ifFalse: [ 2 ]! !

!CodeCoverageExamples methodsFor: 'coverage criteria examples' stamp: 'NPM 8/Nov/2022, 5:11:05 am (UTC)'!
decisionCoverageExample: aBoolean

	| result |
	result := 0.
	
	aBoolean ifTrue: [
		result := result + 1 ].
	
	^ result! !

!CodeCoverageExamples methodsFor: 'coverage criteria examples' stamp: 'NPM 8/Nov/2022, 4:48:25 am (UTC)'!
lineCoverageExample

	true ifTrue: [ ^ self ]. self printString.
	
	self value.! !

!CodeCoverageExamples methodsFor: 'coverage criteria examples' stamp: 'NPM 8/Nov/2022, 4:43:56 am (UTC)'!
methodCoverageExample

	true ifTrue: [ ^ self ].
	
	self value.! !

!CodeCoverageExamples methodsFor: 'coverage criteria examples' stamp: 'NPM 8/Nov/2022, 4:52:27 am (UTC)'!
statementCoverageExample

	true
		ifTrue: [ ^ 1 ]
		ifFalse: [ 2 ].
		
	self value.! !

!ConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:55:21 pm (UTC)'!
aBooleanArgument
	
	booleanArgument ifNil: [ booleanArgument := false ].
	
	^ booleanArgument asString! !

!ConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:21:09 pm (UTC)'!
aBooleanArgument: aString
	
	booleanArgument := aString = 'true' ifTrue: [ true ] ifFalse: [ false ].! !

!ConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:55:23 pm (UTC)'!
anotherBooleanArgument
	
	anotherBooleanArgument ifNil: [ anotherBooleanArgument := false ].
	
	^ anotherBooleanArgument asString! !

!ConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:25:59 pm (UTC)'!
anotherBooleanArgument: aString
	
	anotherBooleanArgument := aString = 'true' ifTrue: [ true ] ifFalse: [ false ].! !

!ConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:25:27 pm (UTC)'!
buildArguments
	
	^ { booleanArgument. anotherBooleanArgument }! !

!DecisionConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:54:18 pm (UTC)'!
aBooleanArgument
	
	booleanArgument ifNil: [ booleanArgument := false ].
	
	^ booleanArgument asString! !

!DecisionConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:48:41 pm (UTC)'!
aBooleanArgument: aString
	
	booleanArgument := aString = 'true' ifTrue: [ true ] ifFalse: [ false ].! !

!DecisionConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:54:23 pm (UTC)'!
anotherBooleanArgument
	
	anotherBooleanArgument ifNil: [ anotherBooleanArgument := false ].
	
	^ anotherBooleanArgument asString! !

!DecisionConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:48:41 pm (UTC)'!
anotherBooleanArgument: aString
	
	anotherBooleanArgument := aString = 'true' ifTrue: [ true ] ifFalse: [ false ].! !

!DecisionConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:51:14 pm (UTC)'!
buildArguments
	
	^ { booleanArgument. anotherBooleanArgument. yetAnotherBooleanArgument }! !

!DecisionConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:54:26 pm (UTC)'!
yetAnotherBooleanArgument
	
	yetAnotherBooleanArgument ifNil: [ yetAnotherBooleanArgument := false ].
	
	^ yetAnotherBooleanArgument asString! !

!DecisionConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:50:44 pm (UTC)'!
yetAnotherBooleanArgument: aString
	
	yetAnotherBooleanArgument := aString = 'true' ifTrue: [ true ] ifFalse: [ false ].! !

!DecisionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:15:06 pm (UTC)'!
aBooleanArgument
	
	booleanArgument ifNil: [ booleanArgument := true ].
	
	^ booleanArgument asString! !

!DecisionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:15:55 pm (UTC)'!
aBooleanArgument: aString
	
	booleanArgument := aString = 'true' ifTrue: [ true ] ifFalse: [ false ].! !

!DecisionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/Nov/2022, 9:27:17 am (UTC)'!
buildArguments
	
	^ { booleanArgument }! !

!Smalltalks2022Presentation methodsFor: 'as yet unclassified' stamp: 'NPM 11/Nov/2022, 9:29:02 am (UTC)'!
openInWorld
	
	| presentation |
	presentation := PresentationWindow new openInWorld.
	
	presentation addSlide: (CodeEditorSlide
		on: CodeCoverageExamples new
		selector: #methodCoverageExample
		creatingReportBuildersWith: MethodCoverageReportBuilder
		buildingArgumentsWith: nil).

	presentation addSlide: (CodeEditorSlide
		on: CodeCoverageExamples new
		selector: #lineCoverageExample
		creatingReportBuildersWith: LineCoverageReportBuilder
		buildingArgumentsWith: nil).

	presentation addSlide: (CodeEditorSlide
		on: CodeCoverageExamples new
		selector: #statementCoverageExample
		creatingReportBuildersWith: StatementCoverageReportBuilder
		buildingArgumentsWith: nil).

	presentation addSlide: (CodeEditorSlide
		on: CodeCoverageExamples new
		selector: #decisionCoverageExample:
		creatingReportBuildersWith: DecisionCoverageReportBuilder
		buildingArgumentsWith: DecisionCoverageArgumentsBuilder new).
		
	presentation addSlide: (CodeEditorSlide
		on: CodeCoverageExamples new
		selector: #conditionTest:or:
		creatingReportBuildersWith: ConditionCoverageReportBuilder
		buildingArgumentsWith: ConditionCoverageArgumentsBuilder new).
		
	presentation addSlide: (CodeEditorSlide
		on: CodeCoverageExamples new
		selector: #decisionConditionTest:or:or:
		creatingReportBuildersWith: BasicDecisionConditionCoverageReportBuilder
		buildingArgumentsWith: DecisionConditionCoverageArgumentsBuilder new).
		
		
	presentation addSlide: (CodeEditorSlide
		on: CodeCoverageExamples new
		selector: #decisionCondition2Test:or:or:
		creatingReportBuildersWith: DecisionConditionCoverageReportBuilder
		buildingArgumentsWith: DecisionConditionCoverageArgumentsBuilder new).
	
	presentation addSlide: (CodeEditorSlide
		on: CodeCoverageExamples new
		selector: #codeCoverageTest:and:
		creatingReportBuildersWith: DecisionConditionCoverageReportBuilder
		buildingArgumentsWith: CodeCoverageArgumentsBuilder new).	
		! !

!Smalltalks2022Presentation class methodsFor: 'as yet unclassified' stamp: 'NPM 9/Nov/2022, 5:35:51 am (UTC)'!
openInWorld
	
	self
		new
		openInWorld! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:14:12 pm (UTC)'!
addTestCase
	
	testCases2 add: argumentsBuilder buildArguments.
	self changed: #testCases.
	
	testCasesList redrawNeeded
	! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 9/Nov/2022, 5:23:54 am (UTC)'!
arguments
	
	^ {}! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 20/Jan/2025, 5:05:08 pm (UTC)'!
buildArgumentInputs
	
	| argumentInputs arguments rightPane buttonsRow |
	arguments := (receiver class >> selector) methodNode arguments.
	arguments ifEmpty: [ 	
		toolbar2 addMorph: ((PluggableButtonMorph model: self action: #runMethodWithoutArguments label: 'Run') color: Color veryVeryLightGray);
		addMorph: ((PluggableButtonMorph model: self action: #clearTestCases label: 'Clear')		color: Color veryVeryLightGray).
		^ self ].
	
	rightPane := LayoutMorph newColumn color: Color veryLightGray.
	argumentInputs := LayoutMorph newColumn color: Color veryLightGray.
	
	arguments do: [ :argument |  
		argumentInputs addMorph: (self buildInputFor: argument) fixedHeight: 20 ].
	
	buttonsRow := LayoutMorph newRow axisEdgeWeight: 0.5; separation: 5@0; color: Color veryLightGray.
	buttonsRow
		addMorph: ((PluggableButtonMorph model: self action: #addTestCase label: 'Add') color: Color veryVeryLightGray);
		addMorph: ((PluggableButtonMorph model: self action: #clearTestCases label: 'Clear')		color: Color veryVeryLightGray);
		addMorph: ((PluggableButtonMorph model: self action: #runTestCases label: 'Run') color: Color veryVeryLightGray).
	
	testCasesList := (PluggableListMorph withModel: self listGetter: #testCases indexGetter: #testCaseIndex indexSetter: #testCaseIndex:) color: Color veryLightGray..
	rightPane
		addMorph: argumentInputs fixedHeight: (arguments size * 20);
		addMorph: buttonsRow fixedHeight: 20;
		addMorphUseAll: testCasesList	.
	
	contentPane addMorph: rightPane fixedWidth: 400.! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:14:19 pm (UTC)'!
buildInputFor: argument 
	
	| argumentRow selectorName |
	argumentRow := LayoutMorph newRow separation: 5@5; color: Color veryLightGray..
	argumentRow addMorph: (LabelMorph contents: argument key).
	selectorName := (argument key,'Argument') asSymbol.
	argumentRow addMorphUseAll: ((TextModelMorph textProvider: argumentsBuilder textGetter: selectorName  textSetter: (selectorName, ':') asSymbol) acceptOnAny: true).
	
	^ argumentRow! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:10:38 pm (UTC)'!
clearTestCases
	
	testCases2 removeAll.
	self buildCodeEditorWith: Browser new.
	self changed: #testCases! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:05:44 pm (UTC)'!
foo
	 
	| analyzer browser |
	analyzer := CodeCoverageAnalyzer
		toAnalyzeAll: { receiver class >> selector }
		creatingReportBuildersWith: reportBuilderFactory.
	
	analyzer value: [ 
		self testCases do: [ :arguments | 
			receiver perform: selector withArguments: arguments ] ].
	
	browser := CodeCoverageAnalyzerBrowser displayingCodeCoverageResultsFrom: analyzer report.
	
	
	
	self buildCodeEditorWith: browser! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 9/Nov/2022, 5:40:49 am (UTC)'!
nextSlide
	
	self owner owner nextSlide! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 7:59:34 pm (UTC)'!
previousSlide
	
	self owningWindow previousSlide! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:07:14 pm (UTC)'!
runMethodWithoutArguments
	
	self runTestCase: {{}}! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 4:19:24 am (UTC)'!
runTestCase: arguments
	 
	| analyzer browser |
	analyzer := CodeCoverageAnalyzer
		toAnalyzeAll: { receiver class >> selector }
		creatingReportBuildersWith: reportBuilderFactory.
	
	analyzer value: [ 
		arguments do: [ :args | 
		receiver perform: selector withArguments: args ] ].
	
	browser := CodeCoverageAnalyzerBrowser displayingCodeCoverageResultsFrom: analyzer report.
	
	
	
	self buildCodeEditorWith: browser! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:00:43 pm (UTC)'!
runTestCases
	
	self runTestCase: testCases2 ! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 4:14:09 am (UTC)'!
testCaseIndex
	
	^ 0! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 4:15:38 am (UTC)'!
testCases
	
	^ testCases2 collect: [:t | t asString ]! !

!CodeEditorSlide methodsFor: 'initialization' stamp: 'NPM 10/Nov/2022, 6:46:45 pm (UTC)'!
buildCodeEditorWith: aBrowser
	
	| newCodeEditor |
	self owningWindow ifNotNil: [ :window | window model: aBrowser ].
	
	aBrowser setSelectedSystemCategory:receiver class category.
	aBrowser selectClass: receiver class.
	aBrowser selectedMessageName: selector.
	
	newCodeEditor := TextModelMorph
		textProvider: aBrowser
		textGetter: #acceptedContents
		textSetter: #contents:notifying:
		selectionGetter: #contentsSelection.
	
	newCodeEditor layoutSpec: LayoutSpec useAll.

	codeEditor
		ifNotNil: [contentPane replaceSubmorph: codeEditor by: newCodeEditor ]
		ifNil: [ contentPane addMorphUseAll: newCodeEditor ]. 

	codeEditor := newCodeEditor.! !

!CodeEditorSlide methodsFor: 'initialization' stamp: 'NPM 10/Nov/2022, 7:48:50 pm (UTC)'!
buildContentPane

	contentPane := LayoutMorph newRow.
	self addMorphUseAll: contentPane.
	self buildCodeEditorWith: Browser new.
	self buildArgumentInputs! !

!CodeEditorSlide methodsFor: 'initialization' stamp: 'NPM 10/Nov/2022, 7:56:26 pm (UTC)'!
buildToolbar

	toolbar2 := LayoutMorph newRow doAdoptWidgetsColor;
		color: Color veryLightGray;
		separation: 10.
		toolbar2 addMorph: ((PluggableButtonMorph model: self action: #previousSlide label: '<') color: Color veryVeryLightGray).
	toolbar2 addMorph: ((PluggableButtonMorph model: self action: #nextSlide label: '>') color: Color veryVeryLightGray).

	^ self addMorph: toolbar2 fixedHeight: 10.! !

!CodeEditorSlide methodsFor: 'initialization' stamp: 'NPM 10/Nov/2022, 8:23:48 pm (UTC)'!
initializeToEdit: aCompiledMethod selector: aSelector creatingReportBuildersWith: aReportBuilderFactory buildingArgumentsWith: anArgumentsBuilder   

	
	receiver :=  aCompiledMethod.
	selector := aSelector.
	reportBuilderFactory := aReportBuilderFactory.
	testCases2 := OrderedCollection new.
	argumentsBuilder := anArgumentsBuilder.

	self buildToolbar. 	
	self buildContentPane.! !

!CodeEditorSlide class methodsFor: 'as yet unclassified' stamp: 'NPM 8/Nov/2022, 8:51:16 pm (UTC)'!
new

	^ self
		newColumn! !

!CodeEditorSlide class methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:18:19 pm (UTC)'!
on: aCompiledMethod selector: aSelector creatingReportBuildersWith: aReportBuilderFactory
	
	^ self
		new
		initializeToEdit: aCompiledMethod
		selector: aSelector
		creatingReportBuildersWith: aReportBuilderFactory
		buildingArgumentsWith: nil! !

!CodeEditorSlide class methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 8:17:48 pm (UTC)'!
on: aCompiledMethod selector: aSelector creatingReportBuildersWith: aReportBuilderFactory buildingArgumentsWith: anArgumentsBuilder    
	
	^ self
		new
		initializeToEdit: aCompiledMethod
		selector: aSelector
		creatingReportBuildersWith: aReportBuilderFactory buildingArgumentsWith: anArgumentsBuilder! !

!PresentationWindow methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 10:06:05 pm (UTC)'!
addSlide: aSlide

	slides ifEmpty: [
		aSlide morphExtent: self morphExtent.
		layoutMorph addMorphUseAll: aSlide.
		currentSlide := aSlide ].
	slides add: aSlide.

	! !

!PresentationWindow methodsFor: 'as yet unclassified' stamp: 'NPM 11/Nov/2022, 10:00:49 am (UTC)'!
fullScreen
	"Zoom Window to Full World size with possible DeskMargins"

	| left right possibleBounds |
	
	(self hasProperty: #originalBounds)
		ifFalse: [ "Expand"
			self setProperty: #originalBounds toValue: self displayBounds.
			left := right := 0.
			possibleBounds := (RealEstateAgent maximumUsableAreaInWorld: self world) 
				insetBy: (left @ 0 corner: right @ 0).
			"possibleBounds := possibleBounds insetBy: Theme current fullScreenDeskMargin"
		] 
		ifTrue: [ "Contract"
			possibleBounds := self valueOfProperty: #originalBounds.
			self removeProperty: #originalBounds.
		].
	self morphPosition: possibleBounds topLeft extent: possibleBounds extent! !

!PresentationWindow methodsFor: 'as yet unclassified' stamp: 'NPM 9/Nov/2022, 5:52:50 am (UTC)'!
initialize

	super initialize.
	slides := OrderedCollection new.
	originalTitle := 'Code Coverage Examples'.! !

!PresentationWindow methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 9:25:17 pm (UTC)'!
nextSlide
	
	| currentIndex |
	slides last = currentSlide ifTrue: [ ^ self ].
	
	currentIndex := slides indexOf: currentSlide.
	targetSlide := slides at: (currentIndex +1).
	
	layoutMorph removeMorph: currentSlide.
	currentSlide := (slides at: currentIndex + 1).
	layoutMorph addMorphUseAll: currentSlide.
	labelString := originalTitle.
	super model: nil.
	self redrawNeeded
	
	
	! !

!PresentationWindow methodsFor: 'as yet unclassified' stamp: 'NPM 9/Nov/2022, 5:53:43 am (UTC)'!
openInWorld

	labelString := originalTitle.
	super openInWorld! !

!PresentationWindow methodsFor: 'as yet unclassified' stamp: 'NPM 9/Nov/2022, 5:55:02 am (UTC)'!
previousSlide
	
	| currentIndex |
	slides first = currentSlide ifTrue: [ ^ self ].
	
	currentIndex := slides indexOf: currentSlide.
	layoutMorph removeMorph: currentSlide.
	currentSlide := (slides at: currentIndex - 1).
	layoutMorph addMorphUseAll: currentSlide.
	labelString := originalTitle.
	super model: nil.
	self redrawNeeded! !

!PresentationWindow methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 9:26:04 pm (UTC)'!
stepAt: millisecondSinceLast

	! !

!PresentationWindow methodsFor: 'as yet unclassified' stamp: 'NPM 8/Nov/2022, 10:12:47 pm (UTC)'!
submorphToFocusKeyboard
	
	^ self! !

!PresentationWindow methodsFor: 'as yet unclassified' stamp: 'NPM 10/Nov/2022, 9:25:54 pm (UTC)'!
wantsSteps
	
	^ true! !
