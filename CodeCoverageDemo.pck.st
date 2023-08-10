'From Cuis 6.0 [latest update: #5510] on 11 November 2022 at 7:53:13 am'!
'Description '!
!provides: 'CodeCoverageDemo' 1 10!
SystemOrganization addCategory: 'CodeCoverageDemo'!


!classDefinition: #CodeEditorSlide category: 'CodeCoverageDemo'!
LayoutMorph subclass: #CodeEditorSlide
	instanceVariableNames: 'codeEditor compiledMethod reportBuilderFactory selector receiver toolbar2 contentPane testCases2 testCasesList argumentInputs2 argumentsBuilder'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'CodeEditorSlide class' category: 'CodeCoverageDemo'!
CodeEditorSlide class
	instanceVariableNames: ''!

!classDefinition: #PresentationWindow category: 'CodeCoverageDemo'!
SystemWindow subclass: #PresentationWindow
	instanceVariableNames: 'slides currentSlide originalTitle targetSlide'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'PresentationWindow class' category: 'CodeCoverageDemo'!
PresentationWindow class
	instanceVariableNames: ''!

!classDefinition: #ImageSlide category: 'CodeCoverageDemo'!
BoxedMorph subclass: #ImageSlide
	instanceVariableNames: 'image toolbar'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'ImageSlide class' category: 'CodeCoverageDemo'!
ImageSlide class
	instanceVariableNames: ''!

!classDefinition: #BasicDecisionConditionCoverageReportBuilder category: 'CodeCoverageDemo'!
DecisionConditionCoverageReportBuilder subclass: #BasicDecisionConditionCoverageReportBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'BasicDecisionConditionCoverageReportBuilder class' category: 'CodeCoverageDemo'!
BasicDecisionConditionCoverageReportBuilder class
	instanceVariableNames: ''!

!classDefinition: #ConditionCoverageReportBuilder category: 'CodeCoverageDemo'!
DecisionConditionCoverageReportBuilder subclass: #ConditionCoverageReportBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'ConditionCoverageReportBuilder class' category: 'CodeCoverageDemo'!
ConditionCoverageReportBuilder class
	instanceVariableNames: ''!

!classDefinition: #DecisionCoverageReportBuilder category: 'CodeCoverageDemo'!
CompiledMethodCoverageTracker subclass: #DecisionCoverageReportBuilder
	instanceVariableNames: 'coveredNonBooleanSourceRanges compiledMethod analyzedSourceRanges booleanValuesByDeclaration usagesByDeclaration compiledMethodWasExecuted sourceRanges2 decisionReceverRanges decisionSelectors'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'DecisionCoverageReportBuilder class' category: 'CodeCoverageDemo'!
DecisionCoverageReportBuilder class
	instanceVariableNames: ''!

!classDefinition: #LineCoverageReportBuilder category: 'CodeCoverageDemo'!
CompiledMethodCoverageTracker subclass: #LineCoverageReportBuilder
	instanceVariableNames: 'compiledMethod analyzedSourceRanges compiledMethodWasExecuted coveredSourceRanges'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'LineCoverageReportBuilder class' category: 'CodeCoverageDemo'!
LineCoverageReportBuilder class
	instanceVariableNames: ''!

!classDefinition: #MethodCoverageReportBuilder category: 'CodeCoverageDemo'!
CompiledMethodCoverageTracker subclass: #MethodCoverageReportBuilder
	instanceVariableNames: 'compiledMethod analyzedSourceRanges compiledMethodWasExecuted'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'MethodCoverageReportBuilder class' category: 'CodeCoverageDemo'!
MethodCoverageReportBuilder class
	instanceVariableNames: ''!

!classDefinition: #StatementCoverageReportBuilder category: 'CodeCoverageDemo'!
CompiledMethodCoverageTracker subclass: #StatementCoverageReportBuilder
	instanceVariableNames: 'compiledMethod analyzedSourceRanges compiledMethodWasExecuted coveredSourceRanges'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'StatementCoverageReportBuilder class' category: 'CodeCoverageDemo'!
StatementCoverageReportBuilder class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageArgumentsBuilder category: 'CodeCoverageDemo'!
Object subclass: #CodeCoverageArgumentsBuilder
	instanceVariableNames: 'booleanArgument anotherBooleanArgument'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'CodeCoverageArgumentsBuilder class' category: 'CodeCoverageDemo'!
CodeCoverageArgumentsBuilder class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageExamples category: 'CodeCoverageDemo'!
Object subclass: #CodeCoverageExamples
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'CodeCoverageExamples class' category: 'CodeCoverageDemo'!
CodeCoverageExamples class
	instanceVariableNames: ''!

!classDefinition: #ConditionCoverageArgumentsBuilder category: 'CodeCoverageDemo'!
Object subclass: #ConditionCoverageArgumentsBuilder
	instanceVariableNames: 'booleanArgument anotherBooleanArgument'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'ConditionCoverageArgumentsBuilder class' category: 'CodeCoverageDemo'!
ConditionCoverageArgumentsBuilder class
	instanceVariableNames: ''!

!classDefinition: #DecisionConditionCoverageArgumentsBuilder category: 'CodeCoverageDemo'!
Object subclass: #DecisionConditionCoverageArgumentsBuilder
	instanceVariableNames: 'booleanArgument anotherBooleanArgument yetAnotherBooleanArgument'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'DecisionConditionCoverageArgumentsBuilder class' category: 'CodeCoverageDemo'!
DecisionConditionCoverageArgumentsBuilder class
	instanceVariableNames: ''!

!classDefinition: #DecisionCoverageArgumentsBuilder category: 'CodeCoverageDemo'!
Object subclass: #DecisionCoverageArgumentsBuilder
	instanceVariableNames: 'booleanArgument'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'DecisionCoverageArgumentsBuilder class' category: 'CodeCoverageDemo'!
DecisionCoverageArgumentsBuilder class
	instanceVariableNames: ''!

!classDefinition: #Smalltalks2022Presentation category: 'CodeCoverageDemo'!
Object subclass: #Smalltalks2022Presentation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverageDemo'!
!classDefinition: 'Smalltalks2022Presentation class' category: 'CodeCoverageDemo'!
Smalltalks2022Presentation class
	instanceVariableNames: ''!


!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:14:12'!
addTestCase
	
	testCases2 add: argumentsBuilder buildArguments.
	self changed: #testCases.
	
	testCasesList redrawNeeded
	! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 11/9/2022 02:23:54'!
arguments
	
	^ {}! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 11/11/2022 06:33:04'!
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
	
	testCasesList := (PluggableListMorph model: self listGetter: #testCases indexGetter: #testCaseIndex indexSetter: #testCaseIndex:) color: Color veryLightGray..
	rightPane
		addMorph: argumentInputs fixedHeight: (arguments size * 20);
		addMorph: buttonsRow fixedHeight: 20;
		addMorphUseAll: testCasesList	.
	
	contentPane addMorph: rightPane fixedWidth: 400.! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:14:19'!
buildInputFor: argument 
	
	| argumentRow selectorName |
	argumentRow := LayoutMorph newRow separation: 5@5; color: Color veryLightGray..
	argumentRow addMorph: (LabelMorph contents: argument key).
	selectorName := (argument key,'Argument') asSymbol.
	argumentRow addMorphUseAll: ((TextModelMorph textProvider: argumentsBuilder textGetter: selectorName  textSetter: (selectorName, ':') asSymbol) acceptOnAny: true).
	
	^ argumentRow! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:10:38'!
clearTestCases
	
	testCases2 removeAll.
	self buildCodeEditorWith: Browser new.
	self changed: #testCases! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:05:44'!
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

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 11/9/2022 02:40:49'!
nextSlide
	
	self owner owner nextSlide! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 16:59:34'!
previousSlide
	
	self owningWindow previousSlide! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:07:14'!
runMethodWithoutArguments
	
	self runTestCase: {{}}! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 01:19:24'!
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

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:00:43'!
runTestCases
	
	self runTestCase: testCases2 ! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 01:14:09'!
testCaseIndex
	
	^ 0! !

!CodeEditorSlide methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 01:15:38'!
testCases
	
	^ testCases2 collect: [:t | t asString ]! !

!CodeEditorSlide methodsFor: 'initialization' stamp: 'NPM 11/10/2022 15:46:45'!
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

!CodeEditorSlide methodsFor: 'initialization' stamp: 'NPM 11/10/2022 16:48:50'!
buildContentPane

	contentPane := LayoutMorph newRow.
	self addMorphUseAll: contentPane.
	self buildCodeEditorWith: Browser new.
	self buildArgumentInputs! !

!CodeEditorSlide methodsFor: 'initialization' stamp: 'NPM 11/10/2022 16:56:26'!
buildToolbar

	toolbar2 := LayoutMorph newRow doAdoptWidgetsColor;
		color: Color veryLightGray;
		separation: 10.
		toolbar2 addMorph: ((PluggableButtonMorph model: self action: #previousSlide label: '<') color: Color veryVeryLightGray).
	toolbar2 addMorph: ((PluggableButtonMorph model: self action: #nextSlide label: '>') color: Color veryVeryLightGray).

	^ self addMorph: toolbar2 fixedHeight: 10.! !

!CodeEditorSlide methodsFor: 'initialization' stamp: 'NPM 11/10/2022 17:23:48'!
initializeToEdit: aCompiledMethod selector: aSelector creatingReportBuildersWith: aReportBuilderFactory buildingArgumentsWith: anArgumentsBuilder   

	
	receiver :=  aCompiledMethod.
	selector := aSelector.
	reportBuilderFactory := aReportBuilderFactory.
	testCases2 := OrderedCollection new.
	argumentsBuilder := anArgumentsBuilder.

	self buildToolbar. 	
	self buildContentPane.! !

!CodeEditorSlide class methodsFor: 'as yet unclassified' stamp: 'NPM 11/8/2022 17:51:16'!
new

	^ self
		newColumn! !

!CodeEditorSlide class methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:18:19'!
on: aCompiledMethod selector: aSelector creatingReportBuildersWith: aReportBuilderFactory
	
	^ self
		new
		initializeToEdit: aCompiledMethod
		selector: aSelector
		creatingReportBuildersWith: aReportBuilderFactory
		buildingArgumentsWith: nil! !

!CodeEditorSlide class methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:17:48'!
on: aCompiledMethod selector: aSelector creatingReportBuildersWith: aReportBuilderFactory buildingArgumentsWith: anArgumentsBuilder    
	
	^ self
		new
		initializeToEdit: aCompiledMethod
		selector: aSelector
		creatingReportBuildersWith: aReportBuilderFactory buildingArgumentsWith: anArgumentsBuilder! !

!PresentationWindow methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 19:06:05'!
addSlide: aSlide

	slides ifEmpty: [
		aSlide morphExtent: self morphExtent.
		layoutMorph addMorphUseAll: aSlide.
		currentSlide := aSlide ].
	slides add: aSlide.

	! !

!PresentationWindow methodsFor: 'as yet unclassified' stamp: 'NPM 11/11/2022 07:00:49'!
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

!PresentationWindow methodsFor: 'as yet unclassified' stamp: 'NPM 11/9/2022 02:52:50'!
initialize

	super initialize.
	slides := OrderedCollection new.
	originalTitle := 'Code Coverage Examples'.! !

!PresentationWindow methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 18:25:17'!
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

!PresentationWindow methodsFor: 'as yet unclassified' stamp: 'NPM 11/9/2022 02:53:43'!
openInWorld

	labelString := originalTitle.
	super openInWorld! !

!PresentationWindow methodsFor: 'as yet unclassified' stamp: 'NPM 11/9/2022 02:55:02'!
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

!PresentationWindow methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 18:26:04'!
stepAt: millisecondSinceLast

	! !

!PresentationWindow methodsFor: 'as yet unclassified' stamp: 'NPM 11/8/2022 19:12:47'!
submorphToFocusKeyboard
	
	^ self! !

!PresentationWindow methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 18:25:54'!
wantsSteps
	
	^ true! !

!ImageSlide methodsFor: 'initialization' stamp: 'NPM 11/11/2022 06:49:00'!
initializeForm: aForm 

	self buildToolbar .
	
	image := (ImageMorph new image: (aForm )).
	
	self addMorph: image.
	! !

!ImageSlide methodsFor: 'initialization' stamp: 'NPM 11/11/2022 06:53:29'!
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

!ImageSlide methodsFor: 'initialization' stamp: 'NPM 11/11/2022 06:47:34'!
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

!ImageSlide methodsFor: 'as yet unclassified' stamp: 'NPM 11/11/2022 06:49:28'!
buildToolbar

	toolbar := LayoutMorph newRow doAdoptWidgetsColor;
		color: Color veryLightGray;
		separation: 10.
		toolbar addMorph: ((PluggableButtonMorph model: self action: #previousSlide label: '<') color: Color veryVeryLightGray).
	toolbar addMorph: ((PluggableButtonMorph model: self action: #nextSlide label: '>') color: Color veryVeryLightGray).

	^ self addMorph: toolbar! !

!ImageSlide methodsFor: 'as yet unclassified' stamp: 'NPM 11/11/2022 06:52:47'!
clipsSubmorphs

	^ true! !

!ImageSlide class methodsFor: 'instance creation' stamp: 'NPM 11/11/2022 06:48:52'!
form: aForm 
	
	^self new initializeForm: aForm ! !

!BasicDecisionConditionCoverageReportBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 18:02:31'!
registerBoolean: aBoolean usedAt: usageSourceRange declaredAt: declarationSourceRange 
	
	self registerBoolean: aBoolean declaredAt: usageSourceRange.
	self coverAsNonBoolean: declarationSourceRange ! !

!ConditionCoverageReportBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:44:16'!
coverAll: sourceRanges fromSending: aSelector to: aReceiver 
	
	self coverAll: sourceRanges! !

!ConditionCoverageReportBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:44:24'!
coverAll: sourceRanges fromSending: aSelector to: anObject withResult: result 

	self coverAll: sourceRanges by: result! !

!ConditionCoverageReportBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 18:01:19'!
registerBoolean: aBoolean usedAt: usageSourceRange declaredAt: declarationSourceRange 
	
	self registerBoolean: aBoolean declaredAt: usageSourceRange.
	self coverAsNonBoolean: declarationSourceRange ! !

!DecisionCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/7/2022 03:31:01'!
collectWithUsages: sourceRanges
	
	^ sourceRanges
		inject: Set new
		into: [ :result :sourceRange |
			result
				add: sourceRange;
				addAll: (self usagesOf: sourceRange);
				yourself ]! !

!DecisionCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/7/2022 03:31:01'!
coveredSourceRanges
	
	^ self fullyCoveredSourceRanges, self partiallyCoveredBooleanRanges! !

!DecisionCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/7/2022 03:31:01'!
fulllyCoveredNonBooleanSourceRanges
	
	^ self collectWithUsages: coveredNonBooleanSourceRanges! !

!DecisionCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/7/2022 03:31:01'!
fullyCoveredBooleanSourceRanges
	
	"A fully-covered boolean source range is one that referenced both true and false."
	
	^ self selectBooleanSourceRanges: [ :coveredValues | coveredValues size = 2 ]! !

!DecisionCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/7/2022 03:31:01'!
fullyCoveredSourceRanges

	^ self fulllyCoveredNonBooleanSourceRanges, self fullyCoveredBooleanSourceRanges! !

!DecisionCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/7/2022 03:31:01'!
partiallyCoveredBooleanRanges
	
	"A partially-covered boolean source range is one that referenced either true or false."
	
	^ self selectBooleanSourceRanges: [ :coveredValues | coveredValues size = 1 ]! !

!DecisionCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/7/2022 03:31:01'!
selectBooleanSourceRanges: aCondition
	
	"Select the boolean source range declarations passing the covered boolean values referenced by them to aCondition.
	Return both the declarations that satisfies aCondition and their usages."
	
	| selectedDeclarations |
	selectedDeclarations := booleanValuesByDeclaration associations
		select: [ :sourceRangeAndCoveredValues | aCondition value: sourceRangeAndCoveredValues value ]
		thenCollect: [ :sourceRangeAndCoveredValues | sourceRangeAndCoveredValues key ].
	
	^ self collectWithUsages: selectedDeclarations! !

!DecisionCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/7/2022 03:31:01'!
uncoveredSourceRanges

	^ analyzedSourceRanges difference: self coveredSourceRanges! !

!DecisionCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/7/2022 03:31:01'!
usagesOf: aDeclaration

	^ usagesByDeclaration
		at: aDeclaration
		ifAbsent: [ Set new ]! !

!DecisionCoverageReportBuilder methodsFor: 'evaluating' stamp: 'NPM 11/7/2022 03:31:01'!
value

	^ CodeCoverageReport
		for: compiledMethod
		executed: compiledMethodWasExecuted
		with: self consolidateCoverageResults
		messages: self messages.! !

!DecisionCoverageReportBuilder methodsFor: 'initialization' stamp: 'NPM 11/7/2022 03:31:01'!
initializeFor: aCompiledMethod with: aCollecitonOfAnalizedSourceRanges 

	compiledMethod := aCompiledMethod.
	analyzedSourceRanges := aCollecitonOfAnalizedSourceRanges.
	coveredNonBooleanSourceRanges := Set new.
	booleanValuesByDeclaration := Dictionary new.
	usagesByDeclaration := Dictionary new.
	compiledMethodWasExecuted := false.
	decisionSelectors := #(#ifTrue: #ifFalse: #ifTrue:ifFalse: #ifFalse:ifTrue:).! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/9/2022 02:34:39'!
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

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 03:35:15'!
cover: aSourceRange declaredAt: declarationSourceRange by: anObject

	"Register thatanObject covered aSourceRange and its declaration at declarationSourceRange."
	
	self
		coverNonBooleanUsage: aSourceRange
		of: declarationSourceRange.
			
	^ anObject! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 03:31:01'!
coverAll: sourceRanges

	self coverAsNonBooleanAll: sourceRanges! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 03:31:01'!
coverAll: sourceRanges by: anObject 
	
	(anObject isKindOf: Boolean)
		ifTrue: [ self registerBoolean: anObject declaredAtAll: sourceRanges ]
		ifFalse: [ self coverAsNonBooleanAll: sourceRanges ].
		
	^ anObject! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 03:31:01'!
coverAll: sourceRanges byLiteralOrPseudoVariable: anObject 

	"Register that anObject covered sourceRanges"
	
	"Literal or pseudo-variables should not be covered as boolean because
	true would always be covered 50% when it should be 100% (it is the true pseudo-variable)"
	self coverAsNonBooleanAll: sourceRanges.
	
	^ anObject! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 03:31:01'!
coverAll: sourceRanges fromSending: aSelector to: aReceiver 
	
	(self isDecisionSelector: aSelector )
		ifTrue: [
			self
				coverDecisionMessageSendTo: aReceiver
				atAll: sourceRanges ]
		ifFalse: [
			self coverAll: sourceRanges  ]! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/8/2022 02:07:27'!
coverAll: sourceRanges fromSending: aSelector to: anObject withResult: result 

	(self isDecisionSelector: aSelector )
		ifTrue: [
			self
				coverDecisionMessageSendTo: anObject
				atAll: sourceRanges ]
		ifFalse: [
			self coverAsNonBooleanAll: sourceRanges ]! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 03:33:32'!
coverAsNonBoolean: aSourceRange

	coveredNonBooleanSourceRanges add: aSourceRange.! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 03:31:01'!
coverAsNonBooleanAll: sourceRanges
	
	sourceRanges do: [ :sourceRange | self coverAsNonBoolean: sourceRange ]! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 03:31:01'!
coverDecisionMessageSendTo: aReceiver atAll: sourceRanges 
	
	coveredNonBooleanSourceRanges
		removeAllFoundIn: sourceRanges.
		
	self
		registerBoolean: aReceiver
		declaredAtAll: sourceRanges ! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 03:31:01'!
coverNonBooleanUsage: usageSourceRange of: declarationSourceRange 
	
	"Consider both usageSourceRange and declarationSourceRange as covered.

	This is used, for instance, when a temporary variable is assigned:
	    - the temporary variable in the assignment is found at usageSourceRange.
	    - the temporary variable declaration is found at  declarationSourceRange."

	self
		registerUsage: usageSourceRange of: declarationSourceRange;
		coverAsNonBoolean: declarationSourceRange.! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 03:31:01'!
markAsExecuted
	
	compiledMethodWasExecuted := true.! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 03:31:01'!
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

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/9/2022 02:34:34'!
registerBoolean: aValue declaredAt: declarationSourceRange

	"Consider declarationSourceRange as a covered boolean source range."

	"If declarationSourceRange is currently considered non-boolean (e.g. it is related to non-boolean objects),
	don't consider it a boolean declaration."
	(coveredNonBooleanSourceRanges includes: declarationSourceRange)
		ifTrue: [ ^ self coverAsNonBoolean: declarationSourceRange ].
		
	(booleanValuesByDeclaration at: declarationSourceRange ifAbsentPut: [ Set new ])
		add: aValue! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 03:31:01'!
registerBoolean: aBoolean declaredAtAll: declarationSourceRanges

	"Consider declarationSourceRanges as covered boolean source ranges.
	
	An example of a boolean having multilple declarations is a keyword message that returned the boolean value:
	
	self foo: 1 bar: 2 baz: 3.
		
	Assuming that #foo:bar:baz: returns a boolean, it is considered to be declared at 3 source ranges: one for each keyword in the selector."

	declarationSourceRanges do: [ :declarationSourceRange |
		self registerBoolean: aBoolean declaredAt: declarationSourceRange ]! !

!DecisionCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 03:31:01'!
registerUsage: aSourceRange of: declarationSourceRange

	(usagesByDeclaration at: declarationSourceRange ifAbsentPut: [ Set new ])
		add: aSourceRange! !

!DecisionCoverageReportBuilder methodsFor: 'testing' stamp: 'NPM 11/7/2022 03:31:01'!
isDecisionSelector: aSelector  
	
	^ decisionSelectors includes: aSelector! !

!DecisionCoverageReportBuilder class methodsFor: 'instance creation' stamp: 'NPM 11/7/2022 03:31:01'!
for: aCompiledMethod withSourceRanges: sourceRanges
	
	^ self
		new
		initializeFor: aCompiledMethod
		with: sourceRanges! !

!LineCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/3/2022 00:27:35'!
compiledMethod

	^ compiledMethod! !

!LineCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/3/2022 00:27:35'!
consolidateCoverageResults

	^ analyzedSourceRanges
		inject: Dictionary new
		into: [ :coverageRatioBySourceRange :aSourceRange |
			coverageRatioBySourceRange
				at: aSourceRange
				put: (self coverageRatioFor: aSourceRange).
				
			coverageRatioBySourceRange ]! !

!LineCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/7/2022 02:56:52'!
cover: aSourceRange

	| end range sourceCode x j |
	sourceCode := compiledMethod sourceCode.

	end _ sourceCode indexOf: Character newLineCharacter startingAt: aSourceRange first ifAbsent: [ sourceCode size ].
	x _ sourceCode copyFrom: aSourceRange first to: end.
	range _ aSourceRange first to: end.
	
	j := analyzedSourceRanges select: [ :r | range includesAllOf: r ].
	
	coveredSourceRanges addAll: (j)! !

!LineCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/7/2022 02:55:30'!
coverageRatioFor: aSourceRange 
	
	^ (coveredSourceRanges includes: aSourceRange)
		ifTrue: [ 1.0 ]
		ifFalse: [ 0.0 ]! !

!LineCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/3/2022 00:27:35'!
messageCategory
	
	^ compiledMethod category! !

!LineCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/3/2022 00:27:35'!
methodClass
	
	^ compiledMethod methodClass! !

!LineCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/3/2022 00:27:35'!
systemCategory
	
	^ compiledMethod
		methodClass
		category ! !

!LineCoverageReportBuilder methodsFor: 'evaluating' stamp: 'NPM 11/6/2022 12:20:02'!
value

	^ CodeCoverageReport
		for: compiledMethod
		executed: compiledMethodWasExecuted
		with: self consolidateCoverageResults messages: nil.! !

!LineCoverageReportBuilder methodsFor: 'initialization' stamp: 'NPM 11/7/2022 02:55:30'!
initializeFor: aCompiledMethod with: aCollecitonOfAnalizedSourceRanges 
	
	compiledMethod := aCompiledMethod.
	analyzedSourceRanges := aCollecitonOfAnalizedSourceRanges.
	compiledMethodWasExecuted := false.
	coveredSourceRanges _ Set new.! !

!LineCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 03:43:07'!
cover: aSourceRange declaredAt: declarationSourceRange by: anObject 
	
	self cover: aSourceRange.
	self cover: declarationSourceRange.
	
	^ anObject! !

!LineCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 02:40:36'!
coverAll: sourceRanges 
	
	sourceRanges do: [ :r | self cover: r ].! !

!LineCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 02:56:29'!
coverAll: sourceRanges by: anObject 

	self coverAll: sourceRanges.

	^ anObject! !

!LineCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 02:40:36'!
coverAll: sourceRanges byLiteralOrPseudoVariable: anObject 
	
	sourceRanges do: [ :r |  self cover: r ].
	
	^ anObject! !

!LineCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 02:57:39'!
coverAll: sourceRanges fromSending: aSelector to: aReceiver 
	
	self coverAll: sourceRanges.! !

!LineCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 02:57:18'!
coverAll: sourceRanges fromSending: aSelector to: aReceiver withResult: aResult 

	self coverAll: sourceRanges! !

!LineCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/3/2022 00:27:35'!
markAsExecuted
	
	compiledMethodWasExecuted := true.! !

!LineCoverageReportBuilder class methodsFor: 'instance creation' stamp: 'NPM 11/3/2022 00:27:35'!
for: aCompiledMethod withSourceRanges: sourceRanges
	
	^ self
		new
		initializeFor: aCompiledMethod
		with: sourceRanges! !

!MethodCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/2/2022 23:47:58'!
compiledMethod

	^ compiledMethod! !

!MethodCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/3/2022 00:17:37'!
coverageRatioFor: aSourceRange 
	
	^ compiledMethodWasExecuted
		ifTrue: [ 1.0 ]
		ifFalse: [ 0.0 ]! !

!MethodCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/2/2022 23:48:22'!
messageCategory
	
	^ compiledMethod category! !

!MethodCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/2/2022 23:48:11'!
methodClass
	
	^ compiledMethod methodClass! !

!MethodCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/2/2022 23:48:37'!
systemCategory
	
	^ compiledMethod
		methodClass
		category ! !

!MethodCoverageReportBuilder methodsFor: 'evaluating' stamp: 'NPM 11/7/2022 02:22:57'!
value

	^ CodeCoverageReport
		for: compiledMethod
		executed: compiledMethodWasExecuted
		with: self consolidateCoverageResults
		messages: Dictionary new.! !

!MethodCoverageReportBuilder methodsFor: 'initialization' stamp: 'NPM 11/3/2022 00:13:27'!
initializeFor: aCompiledMethod with: aCollecitonOfAnalizedSourceRanges 
	
	compiledMethod := aCompiledMethod.
	analyzedSourceRanges := aCollecitonOfAnalizedSourceRanges.
	compiledMethodWasExecuted := false.! !

!MethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/3/2022 00:17:01'!
consolidateCoverageResults

	^ analyzedSourceRanges
		inject: Dictionary new
		into: [ :coverageRatioBySourceRange :aSourceRange |
			coverageRatioBySourceRange
				at: aSourceRange
				put: (self coverageRatioFor: aSourceRange).
				
			coverageRatioBySourceRange ]! !

!MethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/3/2022 00:02:19'!
cover: aSourceRange declaredAt: declarationSourceRange by: anObject 
	
	^ anObject! !

!MethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 02:20:21'!
coverAll: sourceRanges by: anObject 

	^ anObject! !

!MethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/3/2022 00:01:59'!
coverAll: sourceRanges byLiteralOrPseudoVariable: anObject 
	
	^ anObject! !

!MethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 02:25:11'!
coverAll: sourceRanges fromSending: aSelector to: aReceiver 
! !

!MethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 02:20:44'!
coverAll: sourceRanges fromSending: aSelector to: aReceiver withResult: aResult 

	! !

!MethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/2/2022 23:59:19'!
markAsExecuted
	
	compiledMethodWasExecuted := true.! !

!MethodCoverageReportBuilder class methodsFor: 'instance creation' stamp: 'NPM 11/2/2022 23:46:59'!
for: aCompiledMethod withSourceRanges: sourceRanges
	
	^ self
		new
		initializeFor: aCompiledMethod
		with: sourceRanges! !

!StatementCoverageReportBuilder methodsFor: 'initialization' stamp: 'NPM 11/7/2022 02:54:58'!
initializeFor: aCompiledMethod with: aCollecitonOfAnalizedSourceRanges 
	
	compiledMethod := aCompiledMethod.
	analyzedSourceRanges := aCollecitonOfAnalizedSourceRanges.
	compiledMethodWasExecuted := false.
	coveredSourceRanges _ Set new.! !

!StatementCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 02:40:36'!
cover: aSourceRange declaredAt: declarationSourceRange by: anObject 
	
	self cover: aSourceRange.
	self cover: declarationSourceRange.
	^ anObject! !

!StatementCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 02:40:50'!
coverAll: sourceRanges 
	
	sourceRanges do: [ :sourceRange | self cover: sourceRange ].! !

!StatementCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 02:45:49'!
coverAll: sourceRanges by: anObject 

	self coverAll: sourceRanges.

	^ anObject! !

!StatementCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 02:40:36'!
coverAll: sourceRanges byLiteralOrPseudoVariable: anObject 
	
	sourceRanges do: [ :r |  self cover: r ].
	
	^ anObject! !

!StatementCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 02:46:09'!
coverAll: sourceRanges fromSending: aSelector to: aReceiver 
	
	self coverAll: sourceRanges.! !

!StatementCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 02:41:22'!
coverAll: sourceRanges fromSending: aSelector to: aReceiver withResult: aResult 

	self coverAll: sourceRanges! !

!StatementCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/7/2022 02:40:21'!
hingAmount! !

!StatementCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 11/3/2022 00:55:54'!
markAsExecuted
	
	compiledMethodWasExecuted := true.! !

!StatementCoverageReportBuilder methodsFor: 'evaluating' stamp: 'NPM 11/6/2022 12:20:02'!
value

	^ CodeCoverageReport
		for: compiledMethod
		executed: compiledMethodWasExecuted
		with: self consolidateCoverageResults messages: nil.! !

!StatementCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/3/2022 00:55:54'!
compiledMethod

	^ compiledMethod! !

!StatementCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/3/2022 00:55:54'!
consolidateCoverageResults

	^ analyzedSourceRanges
		inject: Dictionary new
		into: [ :coverageRatioBySourceRange :aSourceRange |
			coverageRatioBySourceRange
				at: aSourceRange
				put: (self coverageRatioFor: aSourceRange).
				
			coverageRatioBySourceRange ]! !

!StatementCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/7/2022 02:54:58'!
cover: aSourceRange

	| a |
	a _ compiledMethod sourceCode copyFrom: aSourceRange first to: aSourceRange last.

	coveredSourceRanges add: aSourceRange ! !

!StatementCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/7/2022 02:54:58'!
coverageRatioFor: aSourceRange 
	
	^ (coveredSourceRanges includes: aSourceRange)
		ifTrue: [ 1.0 ]
		ifFalse: [ 0.0 ]! !

!StatementCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/3/2022 00:55:54'!
messageCategory
	
	^ compiledMethod category! !

!StatementCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/3/2022 00:55:54'!
methodClass
	
	^ compiledMethod methodClass! !

!StatementCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 11/3/2022 00:55:54'!
systemCategory
	
	^ compiledMethod
		methodClass
		category ! !

!StatementCoverageReportBuilder class methodsFor: 'instance creation' stamp: 'NPM 11/3/2022 00:55:54'!
for: aCompiledMethod withSourceRanges: sourceRanges
	
	^ self
		new
		initializeFor: aCompiledMethod
		with: sourceRanges! !

!CodeCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 18:15:46'!
aBooleanArgument
	
	booleanArgument ifNil: [ booleanArgument := true ].
	
	^ booleanArgument asString! !

!CodeCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 18:15:46'!
aBooleanArgument: aString
	
	booleanArgument := aString = 'true' ifTrue: [ true ] ifFalse: [ false ].! !

!CodeCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/11/2022 06:35:52'!
anotherBooleanArgument
	
	anotherBooleanArgument ifNil: [ anotherBooleanArgument := true ].
	
	^ anotherBooleanArgument asString! !

!CodeCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/11/2022 06:35:58'!
anotherBooleanArgument: aString
	
	anotherBooleanArgument := aString = 'true' ifTrue: [ true ] ifFalse: [ false ].! !

!CodeCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/11/2022 06:36:39'!
buildArguments
	
	^ { booleanArgument. anotherBooleanArgument }! !

!CodeCoverageExamples methodsFor: 'coverage criteria examples' stamp: 'NPM 11/11/2022 06:37:19'!
codeCoverageTest: aBoolean and: anotherBoolean
	
	| temp1 temp2 temp3 |
	temp1 := aBoolean.
	temp2 := aBoolean and: true.
	
	[ :unused | temp1 ].
	[ :arg | arg value ] value: 1.
	
	0 isZero.
	
	! !

!CodeCoverageExamples methodsFor: 'coverage criteria examples' stamp: 'NPM 11/10/2022 17:39:49'!
conditionTest: aBoolean or: anotherBoolean

	(aBoolean or: anotherBoolean)
		ifTrue: [ 1 ]
		ifFalse: [ 2 ]! !

!CodeCoverageExamples methodsFor: 'coverage criteria examples' stamp: 'NPM 11/10/2022 18:07:14'!
decisionCondition2Test: aBoolean or: anotherBoolean or: yetAnotherBoolean
	
	((aBoolean or: anotherBoolean) or: yetAnotherBoolean)
		ifTrue: [ 1 ]
		ifFalse: [ 2 ]! !

!CodeCoverageExamples methodsFor: 'coverage criteria examples' stamp: 'NPM 11/10/2022 17:53:17'!
decisionConditionTest: aBoolean or: anotherBoolean or: yetAnotherBoolean
	
	((aBoolean or: anotherBoolean) or: yetAnotherBoolean)
		ifTrue: [ 1 ]
		ifFalse: [ 2 ]! !

!CodeCoverageExamples methodsFor: 'coverage criteria examples' stamp: 'NPM 11/8/2022 02:11:05'!
decisionCoverageExample: aBoolean

	| result |
	result := 0.
	
	aBoolean ifTrue: [
		result := result + 1 ].
	
	^ result! !

!CodeCoverageExamples methodsFor: 'coverage criteria examples' stamp: 'NPM 11/8/2022 01:48:25'!
lineCoverageExample

	true ifTrue: [ ^ self ]. self printString.
	
	self value.! !

!CodeCoverageExamples methodsFor: 'coverage criteria examples' stamp: 'NPM 11/8/2022 01:43:56'!
methodCoverageExample

	true ifTrue: [ ^ self ].
	
	self value.! !

!CodeCoverageExamples methodsFor: 'coverage criteria examples' stamp: 'NPM 11/8/2022 01:52:27'!
statementCoverageExample

	true
		ifTrue: [ ^ 1 ]
		ifFalse: [ 2 ].
		
	self value.! !

!ConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:55:21'!
aBooleanArgument
	
	booleanArgument ifNil: [ booleanArgument := false ].
	
	^ booleanArgument asString! !

!ConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:21:09'!
aBooleanArgument: aString
	
	booleanArgument := aString = 'true' ifTrue: [ true ] ifFalse: [ false ].! !

!ConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:55:23'!
anotherBooleanArgument
	
	anotherBooleanArgument ifNil: [ anotherBooleanArgument := false ].
	
	^ anotherBooleanArgument asString! !

!ConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:25:59'!
anotherBooleanArgument: aString
	
	anotherBooleanArgument := aString = 'true' ifTrue: [ true ] ifFalse: [ false ].! !

!ConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:25:27'!
buildArguments
	
	^ { booleanArgument. anotherBooleanArgument }! !

!DecisionConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:54:18'!
aBooleanArgument
	
	booleanArgument ifNil: [ booleanArgument := false ].
	
	^ booleanArgument asString! !

!DecisionConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:48:41'!
aBooleanArgument: aString
	
	booleanArgument := aString = 'true' ifTrue: [ true ] ifFalse: [ false ].! !

!DecisionConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:54:23'!
anotherBooleanArgument
	
	anotherBooleanArgument ifNil: [ anotherBooleanArgument := false ].
	
	^ anotherBooleanArgument asString! !

!DecisionConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:48:41'!
anotherBooleanArgument: aString
	
	anotherBooleanArgument := aString = 'true' ifTrue: [ true ] ifFalse: [ false ].! !

!DecisionConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:51:14'!
buildArguments
	
	^ { booleanArgument. anotherBooleanArgument. yetAnotherBooleanArgument }! !

!DecisionConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:54:26'!
yetAnotherBooleanArgument
	
	yetAnotherBooleanArgument ifNil: [ yetAnotherBooleanArgument := false ].
	
	^ yetAnotherBooleanArgument asString! !

!DecisionConditionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:50:44'!
yetAnotherBooleanArgument: aString
	
	yetAnotherBooleanArgument := aString = 'true' ifTrue: [ true ] ifFalse: [ false ].! !

!DecisionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:15:06'!
aBooleanArgument
	
	booleanArgument ifNil: [ booleanArgument := true ].
	
	^ booleanArgument asString! !

!DecisionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/10/2022 17:15:55'!
aBooleanArgument: aString
	
	booleanArgument := aString = 'true' ifTrue: [ true ] ifFalse: [ false ].! !

!DecisionCoverageArgumentsBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 11/11/2022 06:27:17'!
buildArguments
	
	^ { booleanArgument }! !

!Smalltalks2022Presentation methodsFor: 'as yet unclassified' stamp: 'NPM 11/11/2022 06:29:02'!
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

!Smalltalks2022Presentation class methodsFor: 'as yet unclassified' stamp: 'NPM 11/9/2022 02:35:51'!
openInWorld
	
	self
		new
		openInWorld! !
