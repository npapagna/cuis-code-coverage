'From Cuis 5.0 [latest update: #4528] on 19 February 2021 at 1:49:46 am'!
'Description '!
!provides: 'CodeCoverage' 1 27!
!requires: 'Cuis-Base' 50 4527 nil!
SystemOrganization addCategory: 'CodeCoverage-Model'!
SystemOrganization addCategory: 'CodeCoverage-Tests'!
SystemOrganization addCategory: 'CodeCoverage-UI'!


!classDefinition: #CodeCoverageAnalyzerBrowser category: 'CodeCoverage-UI'!
Browser subclass: #CodeCoverageAnalyzerBrowser
	instanceVariableNames: 'codeCoverageReport'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-UI'!
!classDefinition: 'CodeCoverageAnalyzerBrowser class' category: 'CodeCoverage-UI'!
CodeCoverageAnalyzerBrowser class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageSourceCodeGenerator category: 'CodeCoverage-Model'!
ParseNodeVisitor subclass: #CodeCoverageSourceCodeGenerator
	instanceVariableNames: 'methodNode rawSourceRanges codeCoverageAnalyzerGlobalName numberOfSourceRangeTraced tracedSourceRanges declarationSourceRangeByParseNode tracedSourceCode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-Model'!
!classDefinition: 'CodeCoverageSourceCodeGenerator class' category: 'CodeCoverage-Model'!
CodeCoverageSourceCodeGenerator class
	instanceVariableNames: ''!

!classDefinition: #ProgressiveCodeCoverageTestRunner category: 'CodeCoverage-UI'!
ProgressiveTestRunner subclass: #ProgressiveCodeCoverageTestRunner
	instanceVariableNames: 'codeCoverageAnalyzer compiledMethodAnalyzersInstallationProgressBar compiledMethodAnalyzersRunIncrement'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-UI'!
!classDefinition: 'ProgressiveCodeCoverageTestRunner class' category: 'CodeCoverage-UI'!
ProgressiveCodeCoverageTestRunner class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageAnalyzerTest category: 'CodeCoverage-Tests'!
TestCase subclass: #CodeCoverageAnalyzerTest
	instanceVariableNames: 'codeCoverageAnalyzer originalM1Method'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-Tests'!
!classDefinition: 'CodeCoverageAnalyzerTest class' category: 'CodeCoverage-Tests'!
CodeCoverageAnalyzerTest class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageTest category: 'CodeCoverage-Tests'!
TestCase subclass: #CodeCoverageTest
	instanceVariableNames: 'codeCoverageAnalyzer instanceVariable otherInstanceVariable coverageReport messageResult'
	classVariableNames: 'ClassVariable'
	poolDictionaries: ''
	category: 'CodeCoverage-Tests'!
!classDefinition: 'CodeCoverageTest class' category: 'CodeCoverage-Tests'!
CodeCoverageTest class
	instanceVariableNames: ''!

!classDefinition: #CompiledMethodCoverageAnalyzerTest category: 'CodeCoverage-Tests'!
TestCase subclass: #CompiledMethodCoverageAnalyzerTest
	instanceVariableNames: 'compiledMethodAnalyzer fakeCodeCoverageAnalyzer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-Tests'!
!classDefinition: 'CompiledMethodCoverageAnalyzerTest class' category: 'CodeCoverage-Tests'!
CompiledMethodCoverageAnalyzerTest class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageTextStyler category: 'CodeCoverage-UI'!
SHTextStylerST80 subclass: #CodeCoverageTextStyler
	instanceVariableNames: 'codeCoverageReport'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-UI'!
!classDefinition: 'CodeCoverageTextStyler class' category: 'CodeCoverage-UI'!
CodeCoverageTextStyler class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageAnalyzer category: 'CodeCoverage-Model'!
Object subclass: #CodeCoverageAnalyzer
	instanceVariableNames: 'compiledMethodsToAnalyze compiledMethodCoverageAnalyzer installedCompiledMethodAnalyzers running report'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-Model'!
!classDefinition: 'CodeCoverageAnalyzer class' category: 'CodeCoverage-Model'!
CodeCoverageAnalyzer class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageAnalyzerReport category: 'CodeCoverage-Model'!
Object subclass: #CodeCoverageAnalyzerReport
	instanceVariableNames: 'reportsByClass reportsBySystemCategory reportsByCompiledMethod reportsByClassAndMessageCategory summaryReport'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-Model'!
!classDefinition: 'CodeCoverageAnalyzerReport class' category: 'CodeCoverage-Model'!
CodeCoverageAnalyzerReport class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageReport category: 'CodeCoverage-Model'!
Object subclass: #CodeCoverageReport
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-Model'!
!classDefinition: 'CodeCoverageReport class' category: 'CodeCoverage-Model'!
CodeCoverageReport class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageReportSummary category: 'CodeCoverage-Model'!
CodeCoverageReport subclass: #CodeCoverageReportSummary
	instanceVariableNames: 'childReports'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-Model'!
!classDefinition: 'CodeCoverageReportSummary class' category: 'CodeCoverage-Model'!
CodeCoverageReportSummary class
	instanceVariableNames: ''!

!classDefinition: #CompiledMethodCoverageReport category: 'CodeCoverage-Model'!
CodeCoverageReport subclass: #CompiledMethodCoverageReport
	instanceVariableNames: 'compiledMethod compiledMethodWasExecuted coverageRatioBySourceRange'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-Model'!
!classDefinition: 'CompiledMethodCoverageReport class' category: 'CodeCoverage-Model'!
CompiledMethodCoverageReport class
	instanceVariableNames: ''!

!classDefinition: #CompiledMethodCoverageAnalyzer category: 'CodeCoverage-Model'!
Object subclass: #CompiledMethodCoverageAnalyzer
	instanceVariableNames: 'originalCompiledMethod sourceCodeGenerator tracedCompiledMethod methodClass codeCoverageAnalyzer selector coverageReportBuilder'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-Model'!
!classDefinition: 'CompiledMethodCoverageAnalyzer class' category: 'CodeCoverage-Model'!
CompiledMethodCoverageAnalyzer class
	instanceVariableNames: ''!

!classDefinition: #CompiledMethodCoverageReportBuilder category: 'CodeCoverage-Model'!
Object subclass: #CompiledMethodCoverageReportBuilder
	instanceVariableNames: 'coveredNonBooleanSourceRanges compiledMethod analyzedSourceRanges booleanValuesByDeclaration usagesByDeclaration'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-Model'!
!classDefinition: 'CompiledMethodCoverageReportBuilder class' category: 'CodeCoverage-Model'!
CompiledMethodCoverageReportBuilder class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageTestClass1 category: 'CodeCoverage-Tests'!
Object subclass: #CodeCoverageTestClass1
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-Tests'!
!classDefinition: 'CodeCoverageTestClass1 class' category: 'CodeCoverage-Tests'!
CodeCoverageTestClass1 class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageTestClass2 category: 'CodeCoverage-Tests'!
Object subclass: #CodeCoverageTestClass2
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-Tests'!
!classDefinition: 'CodeCoverageTestClass2 class' category: 'CodeCoverage-Tests'!
CodeCoverageTestClass2 class
	instanceVariableNames: ''!

!classDefinition: #FakeCodeCoverageAnalyzer category: 'CodeCoverage-Tests'!
Object subclass: #FakeCodeCoverageAnalyzer
	instanceVariableNames: 'enabled'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-Tests'!
!classDefinition: 'FakeCodeCoverageAnalyzer class' category: 'CodeCoverage-Tests'!
FakeCodeCoverageAnalyzer class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageAnalyzerBuilder category: 'CodeCoverage-UI'!
Object subclass: #CodeCoverageAnalyzerBuilder
	instanceVariableNames: 'testSuite systemOrganizer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-UI'!
!classDefinition: 'CodeCoverageAnalyzerBuilder class' category: 'CodeCoverage-UI'!
CodeCoverageAnalyzerBuilder class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageBrowserMenues category: 'CodeCoverage-UI'!
Object subclass: #CodeCoverageBrowserMenues
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-UI'!
!classDefinition: 'CodeCoverageBrowserMenues class' category: 'CodeCoverage-UI'!
CodeCoverageBrowserMenues class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageTextStylerFactory category: 'CodeCoverage-UI'!
Object subclass: #CodeCoverageTextStylerFactory
	instanceVariableNames: 'report'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-UI'!
!classDefinition: 'CodeCoverageTextStylerFactory class' category: 'CodeCoverage-UI'!
CodeCoverageTextStylerFactory class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageResultItem category: 'CodeCoverage-UI'!
ProtoObject subclass: #CodeCoverageResultItem
	instanceVariableNames: 'item report label'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeCoverage-UI'!
!classDefinition: 'CodeCoverageResultItem class' category: 'CodeCoverage-UI'!
CodeCoverageResultItem class
	instanceVariableNames: ''!


!CodeCoverageAnalyzerBrowser commentStamp: 'NPM 1/18/2021 01:02:23' prior: 0!
I am a specialized browser that displays results from a code coverage report.

I customize the labels for system categories, classes, message categories and messages, adding their code coverage percentage.
I also highlight the parse nodes that have been covered in a compiled method's source code.

See my 'styling - code coverage results' protocol to see how I do the labels customization/source code highlighting.
!

!CodeCoverageSourceCodeGenerator commentStamp: 'NPM 1/11/2021 21:33:07' prior: 0!
I take a compiled method and, based on its source code, generate a new source code by wrapping each AST node with a tracing message node I create.
When executed, those tracing message nodes will execute the parse node they wrap and notify the active compiled method's code coverage analyzer that the source range of the wrapped parse node that was covered.

See comments in my methods for more information about how I implement code coverage tracing and how I trace message nodes that the Parser optimizes (such as #to:do).!

!ProgressiveCodeCoverageTestRunner commentStamp: 'NPM 1/18/2021 01:56:29' prior: 0!
I am a specialized progressive test runner that runs a test suite collecting code coverage information.!

!CodeCoverageTextStyler commentStamp: 'NPM 1/19/2021 19:56:05' prior: 0!
I am an specialized text styler that highlights covered code.

I use a translucent colors for highighting covered and uncoverd code to allow the selected text's background to be visible.
If the color was solid, the user would not have feedback about which par of the code is selected.!

!CodeCoverageAnalyzer commentStamp: 'NPM 1/16/2021 21:04:01' prior: 0!
I monitor the execution of compiled methods to analyze their code coverage, and provide access to the code coverage reports.

Check the 'evaluating' and 'code coverage report' protocols to get you started.!

!CodeCoverageReport commentStamp: 'NPM 1/11/2021 19:52:54' prior: 0!
I model the result of a code coverage analysis execution.
!

!CodeCoverageReportSummary commentStamp: 'NPM 1/16/2021 21:27:27' prior: 0!
I summarize CodeCoverageReport instances!

!CompiledMethodCoverageReport commentStamp: 'NPM 1/16/2021 21:28:04' prior: 0!
I model the result of a code coverage analysis execution for compiled methods.
!

!CompiledMethodCoverageAnalyzer commentStamp: 'NPM 1/10/2021 12:25:56' prior: 0!
I replace and wrap a CompiledMethod to intercept its execution to collect code coverage information.

If code coverage is disabled I execute the wrapped method.
If code coverage is enabled, I compile an traced version of the wrapped method that will collect code coverage information when executed.

I use the Objects as Method Wrappers facility provided by the VM to wrap compiled methods.
My entry point is my #run:with:in: method, which will be executed by the VM when I install myself in the target class's method dictionary.
!

!FakeCodeCoverageAnalyzer commentStamp: 'NPM 1/10/2021 15:54:50' prior: 0!
I am used to simulate CodeCoverageAnalyzer in tests.!

!CodeCoverageAnalyzerBuilder commentStamp: 'NPM 1/18/2021 16:37:38' prior: 0!
I create CodeCoverageAnalyzer instances from a test suite.

To determine the compiled methods that should be analyzed during the test suite run, I find all compiled methods from all system categories that have the same root prefix as the ones from the test cases classes, and discard those that belong to the test cases themselves.!

!CodeCoverageBrowserMenues commentStamp: 'NPM 1/18/2021 01:07:45' prior: 0!
I exists with the sole purpose of defining the menu items to run tests with code coverage.

There are no messages in my instance side, it is intentionally left blank.

See the 'browser menues' protocol in my class side.!

!CodeCoverageTextStylerFactory commentStamp: 'NPM 1/18/2021 18:33:55' prior: 0!
I take the place of a text styler class provided via the #textStylerClassFor: message (e.g. see Browser>>#textStylerClassFor:).

The returned styler class is later used to create an instance of it to style text.

The problem with this is that the code coverage report is needed to highlight the covered source code, and there was no way to attach this information to the text styler instance created from the returned class as instance creation happens, at the time of writing this,  in InnterTextMorph>>#stylerClass:.

To overcome this problem, I hold a reference to the code coverage report that has to be used to highlight covered code, and when someone sends the #new message to me (thinking I'm a text styler class), I create an instance of CodeCoverageTextStyler passing the code coverage report that should be used for code highlighting.
!

!CodeCoverageResultItem commentStamp: 'NPM 1/18/2021 01:11:26' prior: 0!
I wrap an item to customize its label (#displayOrText) appending its code coverage percentage.
!

!CodeCoverageAnalyzerBrowser methodsFor: 'class list' stamp: 'NPM 1/18/2021 21:46:24'!
classList

	^ super classList
		select: [ :className | codeCoverageReport wasClassOrMetaclassAnalyzed: (self classOrMetaclassNamed: className) ]
		thenCollect: [ :className | self styleClassNamed: className ]! !

!CodeCoverageAnalyzerBrowser methodsFor: 'class list' stamp: 'NPM 1/18/2021 19:49:24'!
classOrMetaclassNamed: aClassName

	| selectedClass |
	
	"NPM: aClassName has to be trimmed as it can contain leading spaces used for indenting it in the hierarchy view."
	selectedClass := Smalltalk classNamed: aClassName withBlanksTrimmed.
	
	^ metaClassIndicated
		ifTrue: [ selectedClass theMetaClass ]
		ifFalse: [ selectedClass theNonMetaClass ]! !

!CodeCoverageAnalyzerBrowser methodsFor: 'class list' stamp: 'NPM 1/18/2021 02:31:59'!
selectedClassOrMetaclass

	^ self classOrMetaclassNamed: selectedClassName! !

!CodeCoverageAnalyzerBrowser methodsFor: 'initialization' stamp: 'NPM 1/20/2021 02:47:06'!
defaultBrowserTitle
	
	^ (CodeCoverageResultItem
		for: 'Code Coverage Browser'
		report: codeCoverageReport) displayStringOrText ! !

!CodeCoverageAnalyzerBrowser methodsFor: 'initialization' stamp: 'NPM 1/17/2021 19:50:10'!
initializeDisplayingReportsFrom: aCodeCoverageReport 

	codeCoverageReport := aCodeCoverageReport.! !

!CodeCoverageAnalyzerBrowser methodsFor: 'message category list' stamp: 'NPM 1/18/2021 20:48:08'!
messageCategoryList
		
	^ super messageCategoryList
		select: [ :messageCategory | codeCoverageReport wasMessageCategoryAnalyzed: messageCategory in: self selectedClassOrMetaclass ]
		thenCollect: [ :messageCategory | self styleMessageCategory: messageCategory ]
		
		
		
		
	
! !

!CodeCoverageAnalyzerBrowser methodsFor: 'message list' stamp: 'NPM 1/18/2021 20:50:31'!
messageList

	^ super messageList
		select: [ :message | codeCoverageReport wasCompiledMethodAnalyzed: self selectedClassOrMetaclass>>message ]
		thenCollect: [ :message | self styleMessage: message ]! !

!CodeCoverageAnalyzerBrowser methodsFor: 'metaclass' stamp: 'NPM 1/18/2021 16:31:13'!
metaClassIndicated: trueOrFalse

	super metaClassIndicated: trueOrFalse.
	
	"I need to notify the class list changed, as the class labels have to be updated to display
	either the instance or the class side coverage percentage."
	self changed: #classList.! !

!CodeCoverageAnalyzerBrowser methodsFor: 'styling - code coverage results' stamp: 'NPM 1/18/2021 21:48:51'!
styleClassNamed: aClassName

	| classOrMetaclass |
	classOrMetaclass := (self classOrMetaclassNamed: aClassName).
	
	(codeCoverageReport wasClassAnalyzed: classOrMetaclass)
		ifFalse: [ ^ aClassName ].
	
	^ CodeCoverageResultItem
		for: aClassName
		report: (codeCoverageReport reportForClass: classOrMetaclass)! !

!CodeCoverageAnalyzerBrowser methodsFor: 'styling - code coverage results' stamp: 'NPM 1/19/2021 21:11:35'!
styleMessage: aSelector

	^ CodeCoverageResultItem
		for: aSelector
		report: (codeCoverageReport reportForCompiledMethod: self selectedClassOrMetaclass >> aSelector)! !

!CodeCoverageAnalyzerBrowser methodsFor: 'styling - code coverage results' stamp: 'NPM 1/19/2021 21:02:21'!
styleMessageCategory: messageCategory

	^ CodeCoverageResultItem
		for: messageCategory
		report: (codeCoverageReport
				reportForMessageCategory: messageCategory
				inClass: self selectedClassOrMetaclass)! !

!CodeCoverageAnalyzerBrowser methodsFor: 'styling - code coverage results' stamp: 'NPM 1/18/2021 21:00:27'!
styleSystemCategory: aSystemCategory 
	
	^ CodeCoverageResultItem
		for: aSystemCategory
		report: (codeCoverageReport reportForSystemCategory: aSystemCategory)! !

!CodeCoverageAnalyzerBrowser methodsFor: 'system category list' stamp: 'NPM 1/18/2021 20:44:27'!
systemCategoryList

	^ super systemCategoryList
		select: [ :systemCategory | codeCoverageReport wasSystemCategoryAnalyzed: systemCategory ]
		thenCollect: [ :systemCategory | self styleSystemCategory: systemCategory ]! !

!CodeCoverageAnalyzerBrowser methodsFor: 'user interface support' stamp: 'NPM 1/18/2021 21:06:58'!
textStylerClassFor: textGetter

	"TODO(NPM): I had no choice but to re-implement my superclass's #textStylerClassFor: method as I
	needed to customize the text styler to be used when displaying the source code of a covered method."

	textGetter = #acceptedContents ifFalse: [
		^ super textStylerClassFor: textGetter ].
	
	currentCompiledMethod ifNotNil: [ 
		^ codeCoverageReport
			reportForCompiledMethod: currentCompiledMethod
			ifAnalyzed: [ :report | CodeCoverageTextStylerFactory new initializeWith: report]
			ifNotAnalyzed: [ super textStylerClassFor: textGetter ] ].
	
	^ SHTextStylerST80! !

!CodeCoverageAnalyzerBrowser class methodsFor: 'instance creation' stamp: 'NPM 1/19/2021 20:47:01'!
displayCodeCoverageResultsFrom: aCodeCoverageAnalyzerReport 
	
	| browser |
	browser _ self displayingCodeCoverageResultsFrom: aCodeCoverageAnalyzerReport.
	
	^ BrowserWindow
		open: browser
		label: browser defaultBrowserTitle! !

!CodeCoverageAnalyzerBrowser class methodsFor: 'instance creation' stamp: 'NPM 1/18/2021 16:38:06'!
displayingCodeCoverageResultsFrom: aCodeCoverageAnalyzerReport 
	
	| newBrowser report |
	newBrowser := self
		new
		initializeDisplayingReportsFrom: aCodeCoverageAnalyzerReport.
		
	
	report := aCodeCoverageAnalyzerReport mostCoveredCompiledMethodReport.
	
	newBrowser
		setClass: report methodClass
		selector: report selector.
	
	^ newBrowser ! !

!CodeCoverageSourceCodeGenerator methodsFor: 'assertions' stamp: 'NPM 12/22/2020 20:17:25'!
denyIsOptimized: aMessageNode

	aMessageNode isOptimized
		ifTrue: [ self shouldNotHappenBecause: 'message nodes are unoptimized when creating my instances' ]! !

!CodeCoverageSourceCodeGenerator methodsFor: 'evaluating' stamp: 'NPM 2/15/2021 18:25:12'!
value

	"Add tracing to methodNode to generate its traced source code.
	
	I traverse the method node's AST adding tracing to each parse node.
	For more information about how each type of parse node is traced, see methods in my 'visiting' protocol."

	methodNode accept: self.
	
	tracedSourceCode :=  methodNode printString .! !

!CodeCoverageSourceCodeGenerator methodsFor: 'initialization' stamp: 'NPM 1/28/2021 21:27:28'!
initializeToTrace: aMethodNode with: aCollectionOfRawSourceRanges  

	methodNode := aMethodNode.
	rawSourceRanges := aCollectionOfRawSourceRanges.
	numberOfSourceRangeTraced := 0.
	tracedSourceRanges := Set new.

	"Holds the source range of the declaration of parse nodes (e.g. temporary variables)"
	declarationSourceRangeByParseNode := Dictionary new.! !

!CodeCoverageSourceCodeGenerator methodsFor: 'parse nodes generation' stamp: 'NPM 1/28/2021 21:27:14'!
addDeclarationSourceRangeOf: aParseNode to: sourceRanges

	declarationSourceRangeByParseNode
		at: aParseNode
		ifPresent: [ :declarationSourceRange | sourceRanges add: declarationSourceRange ]
	! !

!CodeCoverageSourceCodeGenerator methodsFor: 'parse nodes generation' stamp: 'NPM 1/3/2021 17:14:05'!
addTracingToAll: parseNodes 
	
	^ parseNodes collect: [ :parsenode | parsenode accept: self ]! !

!CodeCoverageSourceCodeGenerator methodsFor: 'parse nodes generation' stamp: 'NPM 1/11/2021 21:31:07'!
consumeNextSourceRangeFor: aParseNode

	"Retrieve the next source code interval for aParseNode and remove it from rawSourceRanges.
	
	Implementation Details
	================
	
	The source ranges for a method node for a given parse node can contain either a SourceCodeInterval, or a collection of SourceCodeInterval.
	I have to check that to correctly consume the next source code interval for aParseNode."
	
	| singleSourceRangeOrSourceRanges nextSourceRange |
	singleSourceRangeOrSourceRanges _ rawSourceRanges at: aParseNode.
	
	singleSourceRangeOrSourceRanges class = SourceCodeInterval
		ifTrue: [ ^ rawSourceRanges removeKey: aParseNode ].
		
	nextSourceRange := singleSourceRangeOrSourceRanges removeFirst.
	
	singleSourceRangeOrSourceRanges
		ifEmpty:  [ rawSourceRanges removeKey: aParseNode ].
	
	^ nextSourceRange
	
! !

!CodeCoverageSourceCodeGenerator methodsFor: 'parse nodes generation' stamp: 'NPM 2/19/2021 01:48:11'!
isInstanceOrClassVariable: aParseNode

	^ aParseNode isInstanceVariableNode or: [ aParseNode isLiteralVariableNode ]! !

!CodeCoverageSourceCodeGenerator methodsFor: 'parse nodes generation' stamp: 'NPM 1/9/2021 16:13:35'!
parse: sourceCode

	"Convenience method for parsing source code in the context of methodNode"
	
	^ methodNode parserClass
		parse: sourceCode
		class: methodNode methodClass! !

!CodeCoverageSourceCodeGenerator methodsFor: 'parse nodes generation' stamp: 'NPM 2/19/2021 01:48:40'!
parseNodeCovering: aParseNode whenExecuting: anotherParseNode 
	
	"Generate a parse node that, when compiled and executed, will register that anotherParseNode covered aParseNode.
	If aParseNode has a declaration (e.g. when aParseNode is a temporary variable), it will be covered too."

	declarationSourceRangeByParseNode
		at: aParseNode
		ifPresent: [ :declarationSourceRange |
			^ self
				parseNodeToCover: (self consumeNextSourceRangeFor: aParseNode)
				declaredAt: declarationSourceRange
				withResultOf: anotherParseNode ].

	(self isInstanceOrClassVariable: aParseNode) ifTrue: [
		^ self
			parseNodeCoveringInstancerOrClassVariable: aParseNode
			whenExecuting: anotherParseNode ].	
		
	^ self
		parseNodeToCoverAll: (self sourceRangesToCover: aParseNode)
		whenExecuting: anotherParseNode! !

!CodeCoverageSourceCodeGenerator methodsFor: 'parse nodes generation' stamp: 'NPM 2/19/2021 01:48:40'!
parseNodeCoveringInstancerOrClassVariable: anInstanceVariableNode whenExecuting: aParseNode

	"Instance variables have no declaration source range because, unlike temporary variables,
	they are defined in the class creation message.

	To be able to track all objects assigned to an instance variable in the compiled method across multiple assignments,
	I consider the first appearance of an instance variable as its declaration source range."
	
	| declarationSourceRange usageSourceRange |
	usageSourceRange := self consumeNextSourceRangeFor: anInstanceVariableNode.
	
	declarationSourceRange := declarationSourceRangeByParseNode
		at: anInstanceVariableNode
		ifAbsentPut: [ usageSourceRange ].
	
	^ self
		parseNodeToCover: usageSourceRange
		declaredAt: declarationSourceRange
		withResultOf: aParseNode
	
	! !

!CodeCoverageSourceCodeGenerator methodsFor: 'parse nodes generation' stamp: 'NPM 2/6/2021 20:29:20'!
parseNodeFrom: sourceCodeTemplate toCoverAll: sourceRanges whenExecuting: aParseNode

	"Generate a parse node that, when compiled and executed, will register that aParseNode covered sourceRanges
	in the selector and class of my methodNode instance variable.
	
	Implementation Details
	================
	
	To create the parse node, I create a template for it and modify it filling in the blanks.
	I need to parse a method even though I ony use its sole statement because that's what the parser expects.
	
	I expect sourceCodeTemplate to be the source code of a method whose sole statement is a message send."

	| templateMethodNode codeCoverageMessageSendNode |
	
	"Parse sourceCodeTemplate. The parser will return a MethodNode"
	templateMethodNode _ self parse: sourceCodeTemplate.
	
	"Method nodes have a block containing all statements in the method (in this case, there is only one).
	Grab the message node that sends the sole message in sourceCodeTemplate."
	codeCoverageMessageSendNode _ templateMethodNode block statements first.
	
	"The only thing I have to fill in is the expression that, when executed, will cover sourceRanges"  
	codeCoverageMessageSendNode receiver: aParseNode.
	
	"Increment the number of source range traced by the number of source ranges aParseNode will cover when executed"
	tracedSourceRanges addAll: sourceRanges.

	^ codeCoverageMessageSendNode.! !

!CodeCoverageSourceCodeGenerator methodsFor: 'parse nodes generation' stamp: 'NPM 2/6/2021 20:30:20'!
parseNodeToCover: aSourceRange declaredAt: aDeclarationSourceRange withResultOf: aParseNode

	"Generate a parse node that, when compiled and executed, will register that aParseNode covered aSourceRange
	and aDeclarationSourceRange."

	| sourceCodeTemplate |
	
	"This is the source code template I will use to create a parse node below.
	It will send the message coverAll: to the result of executing aParseNode."
	sourceCodeTemplate _ 'm1 nil cover: {1} declaredAt: {2}'
		format: { aSourceRange storeString. aDeclarationSourceRange storeString }.

	^ self
		parseNodeFrom: sourceCodeTemplate
		toCoverAll: {aSourceRange. aDeclarationSourceRange}
		whenExecuting: aParseNode! !

!CodeCoverageSourceCodeGenerator methodsFor: 'parse nodes generation' stamp: 'NPM 2/6/2021 20:30:39'!
parseNodeToCoverAll: sourceRanges whenExecuting: aParseNode

	"Generate a parse node that, when compiled and executed, will register that aParseNode covered sourceRanges."

	| sourceCodeTemplate |
	
	"This is the source code template I will use to create a parse node below.
	It will send the message coverAll: to the result of executing aParseNode."
	sourceCodeTemplate _ 'm1 nil coverAll: {1}'
		format: { self sourceCodeToCreateAll: sourceRanges }.

	^ self
		parseNodeFrom: sourceCodeTemplate 
		toCoverAll: sourceRanges
		whenExecuting: aParseNode! !

!CodeCoverageSourceCodeGenerator methodsFor: 'parse nodes generation' stamp: 'NPM 2/6/2021 20:31:18'!
parseNodeToCoverAll: sourceRanges whenExecutingMessageNode: aMessageNode

	"NOTE: this method is pretty similar to #parseNodeFrom:toCoverAll:whenExecuting:.
	The only difference is here we are wrapping aMessageNode in a block to cover it even when
	it raises an error. NPM."

	"Generate a parse node that, when compiled and executed, will register that aMessageNode covered sourceRanges
	in the selector and class of methodNode.

	Implementation Details
	================

	To create the parse node, I create a template for it and modify it filling in the blanks.
	I need to parse a method even though I ony use its sole statement because that's what the parser expects."

	| sourceCodeTemplate templateMethodNode codeCoverageMessageSendNode |

	"This is the source code template I will use to create a parse node below.
	It sends the message valueCoveringAll: to the result of executing aMessageNode wrapped in a block.
	aMessageNode needs to be wrapped in a block to cover it even when it raises an error."
	sourceCodeTemplate _ 'm1 [] valueCoveringAll: {1}'
		format: { self sourceCodeToCreateAll: sourceRanges }.

	"Parse it. The parser will return a MethodNode"
	templateMethodNode _ self parse: sourceCodeTemplate.

	"Method nodes have a block containing all statements in the method (in this case, there is only one).
	Grab the message node that sends the #valueCoveringAll: message"
	codeCoverageMessageSendNode _ templateMethodNode block statements first.

	"The only thing I have to fill in is the expression that, when executed, will cover sourceRanges.
	To do so I add aMessageNode as the sole statement of the empty block."
	codeCoverageMessageSendNode receiver statements: { aMessageNode }.

	"Increment the number of source range traced by the number of source ranges aParseNode will cover when executed"
	tracedSourceRanges addAll: sourceRanges.
	
	^ codeCoverageMessageSendNode.! !

!CodeCoverageSourceCodeGenerator methodsFor: 'parse nodes generation' stamp: 'NPM 2/7/2021 23:54:05'!
parseNodeToCoverSourceRangeOf: aParseNode

	"See #parseNodeCovering:whenExecuting:"

	^ self
		parseNodeCovering: aParseNode
		whenExecuting: aParseNode! !

!CodeCoverageSourceCodeGenerator methodsFor: 'parse nodes generation' stamp: 'NPM 2/16/2021 20:37:07'!
register: aSourceRange asDeclarationOf: aParseNode

	"Register the source range where aParseNode is declared"

	declarationSourceRangeByParseNode
		at: aParseNode
		put: aSourceRange.
		
	tracedSourceRanges add: aSourceRange.! !

!CodeCoverageSourceCodeGenerator methodsFor: 'parse nodes generation' stamp: 'NPM 1/29/2021 02:12:06'!
registerDeclarationSourceRangeOf: aParseNode

	self
		register: (self consumeNextSourceRangeFor: aParseNode)
		asDeclarationOf: aParseNode! !

!CodeCoverageSourceCodeGenerator methodsFor: 'parse nodes generation' stamp: 'NPM 1/11/2021 21:30:12'!
sourceCodeToCreateAll: sourceRanges 
	
	"Return the source code that, when compiled and executed, will represent sourceRanges."
	
	^ String streamContents: [ :contents | 
		contents nextPut: ${.
		
		sourceRanges
			do: [ :sourceRange | sourceRange storeOn:  contents ]
			separatedBy: [ contents nextPut: $.; space ].
		
		contents nextPut: $}
	]! !

!CodeCoverageSourceCodeGenerator methodsFor: 'parse nodes generation' stamp: 'NPM 1/28/2021 21:22:34'!
sourceRangesToCover: aParseNode

	| sourceRangesToCover |
	sourceRangesToCover := Set with: (self consumeNextSourceRangeFor: aParseNode).

	"if aParseNode has a declaration (e.g. | a | if aParseNode is a parse node for the temporary
	variable 'a', add it to sourceRangesToCover so the declaration will be cover as well when aParseNode is
	used"
	self addDeclarationSourceRangeOf: aParseNode to: sourceRangesToCover.

	^ sourceRangesToCover! !

!CodeCoverageSourceCodeGenerator methodsFor: 'public - accessing' stamp: 'NPM 2/1/2021 22:39:50'!
tracedSourceCode
	
	^ tracedSourceCode! !

!CodeCoverageSourceCodeGenerator methodsFor: 'public - accessing' stamp: 'NPM 1/19/2021 18:13:17'!
tracedSourceRanges

	^ tracedSourceRanges! !

!CodeCoverageSourceCodeGenerator methodsFor: 'visiting' stamp: 'NPM 2/6/2021 20:06:23'!
visitAssignmentNode: anAssignmentNode

	"Add tracing to assignment nodes.
	I consider an assignment node covered when its right hand side is evaluated.
	
	Implemenation Details
	===============
	
	Note that I do not visit the variable node as doing so will replace it with a tracing message node, and message nodes cannot be used as the left hand side
	in assignments.
	
	This is totally fine. Visiting a node is useful when I don't know its type, but in this case only VariableNodes are accepted for the left hand side.

	The source code interval for the variable will be considered covered when the assignment is evaluated."

	anAssignmentNode
		variable: anAssignmentNode variable
		value: (anAssignmentNode value accept: self).

	^ self
		parseNodeCovering: anAssignmentNode variable
		whenExecuting: anAssignmentNode! !

!CodeCoverageSourceCodeGenerator methodsFor: 'visiting' stamp: 'NPM 1/9/2021 20:51:07'!
visitBacktickNode: aBacktickNode
 
	"Add tracing to backtick nodes.
	I consider backtick nodes as covered when they are executed.
	
	Implementation Details
	===============
	
	I do not visit the node's expression because they are executed at compile time.
	Instead I use the source range assigned to aBacktickNode to cover it."

	^ self parseNodeToCoverSourceRangeOf: aBacktickNode! !

!CodeCoverageSourceCodeGenerator methodsFor: 'visiting' stamp: 'NPM 2/16/2021 20:35:42'!
visitBlockNode: aBlockNode

	"Add tracing to block nodes.
	I consider a block node covered when all of its statements are covered."

	aBlockNode arguments do: [ :argument | self registerDeclarationSourceRangeOf: argument ].
	self visitIfNotNil: aBlockNode temporariesDeclaration.

	aBlockNode statements: (self addTracingToAll: aBlockNode statements).
	
	aBlockNode = methodNode block ifFalse: [
		self consumeNextSourceRangeFor: aBlockNode.
		self consumeNextSourceRangeFor: aBlockNode closureCreationNode ].
	
	^ aBlockNode.! !

!CodeCoverageSourceCodeGenerator methodsFor: 'visiting' stamp: 'NPM 1/9/2021 16:27:41'!
visitBraceNode: aBraceNode
 
	"Add tracing to brace nodes.
	I consider a brace node covered when it is evaluated."
	
	^ self parseNodeToCoverSourceRangeOf: aBraceNode! !

!CodeCoverageSourceCodeGenerator methodsFor: 'visiting' stamp: 'NPM 1/9/2021 16:32:38'!
visitCascadeNode: aCascadeNode

	"Add tracing to cascade nodes.
	I consider a cascade node covered when its receiver is covered and all of the sent messages are evaluated.
	
	Implementation Details
	===============
	
	I need to rewrite the cascade node a a sequence of regular message sends to add tracing to them.
	
	I go from this:
	
	 aReceiver
	        m1;
	        m2: #foo.
	
	to this:
	    
	    cascadeReceiver := aReceiver.
	    cascadeReceiver m1.
	    cascadeReceiver m2: #foo.
	
	This solves two issues:
	
	1) Correctly adding tracing to the receiver
	------------------------------------------------------
	The receiver can be any valid Smalltalk expression. In particular, it can be a message send or a block.
	No matter the case, I need to visit it to add tracing to it.
	I store the cascade receiver into the cascadeReceiver variable to ensure it is evaluated only once to keep the cascade semantics.
	
	2) Correctly adding tracing to the cascade message sends
	-------------------------------------------------------------------------
	By design MessageNodes in CascadeNode instances have their receiver set to nil, as it is the cascade node that provides it.
	This presents a problem for me: if I add tracing to the message nodes as they come out of aCascadeNode messages, the source code I will generate
	won't be a valid Smalltalk code as the message will be sent to no one.
	
	To fix it, I rewrite the cascade messages by assigning them a receiver: the cascadeReceiver variable that I mentioned above. This makes them valid
	message nodes, ones I know how to add tracing to."
 
	| cascadeBlockNode cascadeBlockEvaluationNode cascadeReceiverAssignmentNode cascadeReceiverVariableNode templateMethodNode tracedMessageNodes |
	
	"This is the source code template I will use to create a parse node to cover aCascadeNode.
	I will fill in the cascadeReceiver assigment value and add aCascadeNode message sends after it.
	I need to parse a method even though I ony use its sole statement because that's what the parser expects."
	templateMethodNode := self parse: 'm1 [ |cascadeReceiver| cascadeReceiver := nil ] value.'.
	
	"Grab the block evaluation node: [ |cascadeReceiver| cascadeReceiver := nil ] value"
	cascadeBlockEvaluationNode := templateMethodNode block statements first.
	
	"Grab the receiver of the block evaluation node: [ |cascadeReceiver| cascadeReceiver := nil ]"
	cascadeBlockNode := cascadeBlockEvaluationNode receiver.
	
	"Grab the assignment node: cascadeReceiver := nil"
	cascadeReceiverAssignmentNode := cascadeBlockNode statements first.
	
	"Grab the variable being assigned: cascadeReceiver"
	cascadeReceiverVariableNode := cascadeReceiverAssignmentNode variable.
	
	"Now I will replace the placeholde value being assigned (nil) with an expression that, when evaluated, will cover the receiver
	of aCascadeNode and return it.
	After executing this assignment node, cascadeReceiver will hold a reference to the receiver of the cascade message send."
	cascadeReceiverAssignmentNode
		variable: cascadeReceiverVariableNode
		value: (aCascadeNode receiver accept: self).
	
	"As I mentioned above, I need to rewrite aCascadeNode as a sequence of regular message sends.
	For doing that I assign to each message send their missing receiver: the cascade node receiver which I just stored in the
	cascadeReceiver temporary variable."
	tracedMessageNodes := (aCascadeNode messages collect:
		[ :messageNode | 
			messageNode receiver: cascadeReceiverVariableNode.
			self visitMessageNodeInCascade: messageNode ]).
		
	"Now I will add the traced message nodes after the cascadeReceiver assignment node."
	cascadeBlockNode statements addAll: tracedMessageNodes.
	
	^ cascadeBlockEvaluationNode! !

!CodeCoverageSourceCodeGenerator methodsFor: 'visiting' stamp: 'NPM 1/9/2021 16:27:41'!
visitInstanceVariableNode: anInstanceVariableNode
 	
	"Add tracing to instance variable nodes.
	I consider a instance variable node covered when it is read."
	
	^ self parseNodeToCoverSourceRangeOf: anInstanceVariableNode! !

!CodeCoverageSourceCodeGenerator methodsFor: 'visiting' stamp: 'NPM 1/9/2021 16:27:41'!
visitLiteralNode: aLiteralNode
 	
	"Add tracing to literal nodes.
	I consider a literal node covered when it is read."
	
	^ self parseNodeToCoverSourceRangeOf: aLiteralNode ! !

!CodeCoverageSourceCodeGenerator methodsFor: 'visiting' stamp: 'NPM 1/9/2021 16:27:41'!
visitLiteralVariableNode: aLiteralVariableNode
 	
	"Add tracing to literal variable nodes.
	I consider a literal variable node covered when it is read."
	
	^ self parseNodeToCoverSourceRangeOf: aLiteralVariableNode! !

!CodeCoverageSourceCodeGenerator methodsFor: 'visiting' stamp: 'NPM 1/28/2021 16:38:09'!
visitMessageNode: aMessageNode

	"Add tracing to message nodes.
	
	Message nodes are traced by replacing its receiver, and arguments with traced equivalent ones.
	The only source ranges besides those that remain to be traced are the one for the keywords, which are coverd when the message is evaluated."
	
	"This is a safety check as optimized message nodes cannot be traced correctly.
	Remember that I unoptimize the source code of methods I work on to add tracing to them correctly (see the #for: instance creation method in my class)."
	self denyIsOptimized: aMessageNode.
	
	aMessageNode receiver: (aMessageNode receiver accept: self).
	aMessageNode arguments: (self addTracingToAll: aMessageNode arguments).

	self consumeNextSourceRangeFor: aMessageNode.

	^ self
		parseNodeToCoverAll: aMessageNode keywordRanges 
		whenExecutingMessageNode: aMessageNode! !

!CodeCoverageSourceCodeGenerator methodsFor: 'visiting' stamp: 'NPM 1/28/2021 16:45:31'!
visitMessageNodeInCascade: aMessageNode

	^ self
		parseNodeToCoverAll: { self consumeNextSourceRangeFor: aMessageNode }
		whenExecutingMessageNode: aMessageNode.! !

!CodeCoverageSourceCodeGenerator methodsFor: 'visiting' stamp: 'NPM 1/29/2021 02:12:19'!
visitMethodNode: aMethodNode

	aMethodNode arguments do: [ :argument |
		self registerDeclarationSourceRangeOf: argument ].
	
	^ super visitMethodNode: aMethodNode! !

!CodeCoverageSourceCodeGenerator methodsFor: 'visiting' stamp: 'NPM 12/13/2020 18:41:19'!
visitNewArrayNode: aNewArrayNode

	self notYetImplemented! !

!CodeCoverageSourceCodeGenerator methodsFor: 'visiting' stamp: 'NPM 12/13/2020 16:40:34'!
visitRemoteTempVectorNode: aRemoteTempVectorNode

	self notYetImplemented! !

!CodeCoverageSourceCodeGenerator methodsFor: 'visiting' stamp: 'NPM 12/22/2020 19:44:49'!
visitReturnNode: aReturnNode

	"Add tracing to return nodes.
	I consider a return node covered when it is evaluated.
	
	Note that I do not add tracing to implicit return nodes as they are not present in a method's source code."

	(aReturnNode isImplicitSelfReturnIn: methodNode)
		ifTrue: [ ^ aReturnNode ].

	aReturnNode expr: (aReturnNode expr accept: self).

	^ aReturnNode.! !

!CodeCoverageSourceCodeGenerator methodsFor: 'visiting' stamp: 'NPM 12/22/2020 19:42:00'!
visitSelectorNode: aSelectorNode
 
	self shouldNotHappenBecause: 'visiting selector nodes is not needed for code coverage. NPM'. ! !

!CodeCoverageSourceCodeGenerator methodsFor: 'visiting' stamp: 'NPM 1/9/2021 16:27:41'!
visitTempVariableNode: aTempVariableNode
 
	"Add tracing to temporary variable nodes.
	I consider a temporary variable node covered when it is read."
	
	^ self parseNodeToCoverSourceRangeOf: aTempVariableNode ! !

!CodeCoverageSourceCodeGenerator methodsFor: 'visiting' stamp: 'NPM 1/29/2021 02:05:35'!
visitTemporaryDeclarationNode: aTemporaryDeclarationNode
 
	"Do not add tracing to temporary declarations because they are not executed.
	
	Implementation Details
	===============
	
	I still need to consume the source code interval for the temporary declaration even though it is not used, to keep the
	semantics of methods in the 'visiting' protocol of my class."

	self
		register: (self consumeNextSourceRangeFor: aTemporaryDeclarationNode)
		asDeclarationOf: aTemporaryDeclarationNode variableNode.
	
	"I consume the source code interval for the variable node explicitly (without visiting the parse node),
	as I don't need to add tracing to it."
	self consumeNextSourceRangeFor: aTemporaryDeclarationNode variableNode.
	
	^ aTemporaryDeclarationNode! !

!CodeCoverageSourceCodeGenerator methodsFor: 'visiting' stamp: 'NPM 12/22/2020 19:42:07'!
visitUndeclaredVariableNode: aVariableNode

	self shouldNotHappenBecause: 'undeclared variable nodes cannot be compiled, and so they cannot be present in the method node of compiled methods. NPM'.! !

!CodeCoverageSourceCodeGenerator methodsFor: 'visiting' stamp: 'NPM 1/11/2021 21:28:26'!
visitVariableNode: aVariableNode
	
	"Add tracing to variable nodes.
	I consider a variable node covered when it is read.
	
	Implementation Details
	================
	
	Some variable nodes are not included in the method node's source ranges.
	If this is one of those nodes, I just return the variable node without tracing.
	
	One example of such variable is the one added by the parser when producing the node for an empty block ([]).
	The empty block is represented by a BlockNode whose sole statement is a VariableNode containing the nil pseudo variable.
	
	See it for yourself
	----------------------
	The following example will open two inspectors:
	    * one on the raw source ranges of the source code of the method it compiled
	    * another on the statements of its empty block.
	
	Note that the inspected raw source ranges do not include an entry for the nil pseudo variable node ({nil}),
	but that node is present in the inspected BlockNode's statements.
	
	Evaluate:
	
	    | methodNode emptyBlockNode |
	    methodNode := self parserClass parse: 'm1 []' class: self.
	    emptyBlockNode := methodNode block statements first.
	    emptyBlockNode statements inspect.
	    methodNode rawSourceRanges inspect	.
	"
	
	(rawSourceRanges includesKey: aVariableNode)
		ifFalse: [ ^ aVariableNode ].
		
	"Documentar/arreglar"
	aVariableNode isSuperPseudoVariable 
		ifTrue: [ 
			self consumeNextSourceRangeFor: aVariableNode.
			^ aVariableNode ].
	
	^ self parseNodeToCoverSourceRangeOf: aVariableNode.! !

!CodeCoverageSourceCodeGenerator class methodsFor: 'source code tracing' stamp: 'NPM 1/9/2021 17:10:23'!
valueFor: aCompiledMethod 

	"Convenience method for generating traced source code for a compiled method"
	
	^ (self for: aCompiledMethod) value.! !

!CodeCoverageSourceCodeGenerator class methodsFor: 'instance creation' stamp: 'NPM 1/10/2021 03:07:39'!
for: aCompiledMethod 
	
	"Return a new instance to generate a source code for aCompiledMethod with code coverage tracing.
	
	Implementation Details
	================
	
	I cannot use the compiled method's method node as-is because it was compiled with optimizations.
	
	The issue with optimizations is that the parser adds hidden parse nodes or modifies the original message nodes in the source code
	and those nodes can be missing from the method node's raw source ranges making it impossible to me to correctly trace their execution.
	
	To get around that, I recreate the method node temporarily disabling parser optimizations.
	Note that the removal of the optimizations are used only to work correctly with message nodes.
	The unoptimized message nodes will be re-optimized when the traced source code is compiled (optimizations turned on by default).
	
	For more information about the optimizations that are done by the parser to message nodes see the 'macro transformations' protocol in MessageNode."
	
	^ aCompiledMethod methodNode unoptimizedMethodNodeAndRawSourceRangesDo: [ :rawSourceRanges :methodNode |
		self
			new
			initializeToTrace: methodNode
			with: rawSourceRanges
			]

	! !

!ProgressiveCodeCoverageTestRunner methodsFor: 'evaluating - private' stamp: 'NPM 1/17/2021 12:18:01'!
registerCodeCoverageAnalyzerActions

	codeCoverageAnalyzer
		when: #startInstallingCompiledMethodAnalyzers
			send: #openCompiledMethodAnalyzersInstallationProgressBar:
			to: self;
		when: #installCompiledMethodAnalyzer
			send: #displayCompiledMethodAnalyzersInstallationProgressFor:
			to: self;
		when: #endInstallingCompiledMethodAnalyzers
			send: #closeCompiledMethodAnalyzersInstallationProgressBar
			to: self! !

!ProgressiveCodeCoverageTestRunner methodsFor: 'evaluating - private' stamp: 'NPM 1/17/2021 12:36:40'!
runSuite

	"I need to override this method as testSuite run should be run by the code coverage analyzer to collect coverage information.
	Also, I need to display the code coverage results after the test suite is run."

	testResult _ codeCoverageAnalyzer value: [ testSuite run ].	
	testResult hasPassed 
		ifTrue: [ self informAllTestPassed ] 
		ifFalse: [self showDeffects ].
		
	self showCodeCoverageResults
	! !

!ProgressiveCodeCoverageTestRunner methodsFor: 'evaluating - private' stamp: 'NPM 1/17/2021 12:34:02'!
runSuiteShowingProgress

	"I need to override this method to display the compiled method analyzeres installation progress prior to displaying
	the test suite run progress."
	
	[
		self registerCodeCoverageAnalyzerActions.
		codeCoverageAnalyzer value:[ super runSuiteShowingProgress ].
	] ensure: [
		self unregisterCodeCoverageAnalyzerActions.
	]! !

!ProgressiveCodeCoverageTestRunner methodsFor: 'evaluating - private' stamp: 'NPM 1/17/2021 12:16:53'!
unregisterCodeCoverageAnalyzerActions

	^ codeCoverageAnalyzer releaseActionMap! !

!ProgressiveCodeCoverageTestRunner methodsFor: 'initialization' stamp: 'NPM 1/18/2021 01:56:50'!
initializeFor: aTestSuite analyzingCodeCoverageWith: aCodeCoverageAnalyzer 
	
	testSuite := aTestSuite.
	codeCoverageAnalyzer := aCodeCoverageAnalyzer.! !

!ProgressiveCodeCoverageTestRunner methodsFor: 'progress bar - private' stamp: 'NPM 1/18/2021 01:57:12'!
createCompiledMethodAnalyzersInstallationProgressBar

	compiledMethodAnalyzersInstallationProgressBar := ProgressMorph label: 'Installing compiled method analyzers'! !

!ProgressiveCodeCoverageTestRunner methodsFor: 'progress bar - private' stamp: 'NPM 1/18/2021 01:57:12'!
createProgressBar

	super createProgressBar.
	
	self updateProgressBarTitle.
	self createCompiledMethodAnalyzersInstallationProgressBar.
	! !

!ProgressiveCodeCoverageTestRunner methodsFor: 'progress bar - private' stamp: 'NPM 11/30/2020 21:14:54'!
updateProgressBarTitle

	progressBar label: 'Collecting code coverage for ', testSuite name! !

!ProgressiveCodeCoverageTestRunner methodsFor: 'progress bar - private - compiled method analyzers' stamp: 'NPM 1/17/2021 12:20:49'!
closeCompiledMethodAnalyzersInstallationProgressBar
	
	UISupervisor whenUIinSafeState: [ compiledMethodAnalyzersInstallationProgressBar dismissMorph ]! !

!ProgressiveCodeCoverageTestRunner methodsFor: 'progress bar - private - compiled method analyzers' stamp: 'NPM 1/17/2021 12:20:49'!
displayCompiledMethodAnalyzersInstallationProgressFor: aCompiledMethod 

	compiledMethodAnalyzersInstallationProgressBar subLabel: aCompiledMethod classAndSelector.
	compiledMethodAnalyzersInstallationProgressBar incrDone: compiledMethodAnalyzersRunIncrement.
	
	! !

!ProgressiveCodeCoverageTestRunner methodsFor: 'progress bar - private - compiled method analyzers' stamp: 'NPM 1/17/2021 12:20:49'!
openCompiledMethodAnalyzersInstallationProgressBar: numberOfAnalyzersToInstall

	compiledMethodAnalyzersRunIncrement := numberOfAnalyzersToInstall / 100.
	compiledMethodAnalyzersInstallationProgressBar openInWorld.
	! !

!ProgressiveCodeCoverageTestRunner methodsFor: 'show result - private' stamp: 'NPM 1/20/2021 02:43:01'!
showCodeCoverageResults 

	CodeCoverageAnalyzerBrowser displayCodeCoverageResultsFrom: codeCoverageAnalyzer report .

	! !

!ProgressiveCodeCoverageTestRunner class methodsFor: 'evaluating' stamp: 'NPM 1/18/2021 02:01:05'!
run: aTestSuite analyzingCodeCoverageWith: aCodeCoverageAnalyzer 
	
	(self for: aTestSuite analyzingCodeCoverageWith: aCodeCoverageAnalyzer)
		value! !

!ProgressiveCodeCoverageTestRunner class methodsFor: 'instance creation' stamp: 'NPM 1/18/2021 01:58:08'!
for: aTestSuite analyzingCodeCoverageWith: aCodeCoverageAnalyzer 
	
	^ self
		new
		initializeFor: aTestSuite
		analyzingCodeCoverageWith: aCodeCoverageAnalyzer! !

!CodeCoverageAnalyzerTest methodsFor: 'assertions' stamp: 'NPM 1/16/2021 18:04:21'!
assertCodeCoverageAnalyzerIsRunning

	codeCoverageAnalyzer ifRunning: [ ^ self ].
	
	self fail.! !

!CodeCoverageAnalyzerTest methodsFor: 'assertions' stamp: 'NPM 1/16/2021 18:07:39'!
assertM1IsBeingAnalyzed
	
	self assert: (self compiledMethodAtM1Selector analyzes: originalM1Method)! !

!CodeCoverageAnalyzerTest methodsFor: 'assertions' stamp: 'NPM 1/16/2021 17:28:45'!
assertRaisesClassWasNotAnalizedError: aBlock

	self
		should: aBlock
		raise: AssertionFailure
		withMessageText: CodeCoverageAnalyzer classWasNotAnalyzedErrorMessage! !

!CodeCoverageAnalyzerTest methodsFor: 'assertions' stamp: 'NPM 1/16/2021 18:09:04'!
assertRaisesCompiledMethodWasNotAnalizedError: aBlock

	self
		should: aBlock
		raise: AssertionFailure
		withMessageText: CodeCoverageAnalyzer compiledMethodWasNotAnalyzedErrorMessage! !

!CodeCoverageAnalyzerTest methodsFor: 'assertions' stamp: 'NPM 1/16/2021 17:42:15'!
assertRaisesReportsAreNotAvailableWhileRunningError: aBlock
	
	self
		should: aBlock
		raise: AssertionFailure
		withMessageText: CodeCoverageAnalyzer reportsAreNotAvailableWhileRunningErrorMessage! !

!CodeCoverageAnalyzerTest methodsFor: 'assertions' stamp: 'NPM 1/16/2021 17:35:55'!
assertRaisesSystemCategoryWasNotAnalizedError: aBlock

	self
		should: aBlock
		raise: AssertionFailure
		withMessageText: CodeCoverageAnalyzer systemCategoryWasNotAnalyzedErrorMessage! !

!CodeCoverageAnalyzerTest methodsFor: 'assertions' stamp: 'NPM 1/16/2021 18:05:03'!
denyCodeCoverageAnalyzerIsRunning

	codeCoverageAnalyzer ifRunning: [ self fail ]! !

!CodeCoverageAnalyzerTest methodsFor: 'assertions' stamp: 'NPM 1/16/2021 18:09:29'!
denyM1IsBeingAnalyzed
	
	self
		assert: originalM1Method
		equals: self compiledMethodAtM1Selector! !

!CodeCoverageAnalyzerTest methodsFor: 'exercising' stamp: 'NPM 1/16/2021 18:12:35'!
setupCodeCoverageAnalyzerForM1Method

	| compiledMethodToAnalyze |
	
	"Make sure to tear down the existing code coverage analyzer before creating a new one.
	Useful during debugging when restarting the context does not run the test case's tearDown method. NPM"
	self tearDownCodeCoverageAnalyzer.
	
	compiledMethodToAnalyze := self compiledMethodAtM1Selector.
	
	codeCoverageAnalyzer := CodeCoverageAnalyzer toAnalyzeAll: {compiledMethodToAnalyze}.! !

!CodeCoverageAnalyzerTest methodsFor: 'exercising' stamp: 'NPM 1/16/2021 18:12:41'!
startTrackingCodeCoverage

	codeCoverageAnalyzer startTrackingCodeCoverage! !

!CodeCoverageAnalyzerTest methodsFor: 'exercising' stamp: 'NPM 1/16/2021 16:42:36'!
stopTrackingCodeCoverage
	
	codeCoverageAnalyzer stopTrackingCodeCoverage.! !

!CodeCoverageAnalyzerTest methodsFor: 'setUp/tearDown' stamp: 'NPM 1/16/2021 16:47:30'!
setUp

	super setUp.
	
	originalM1Method := self compiledMethodAtM1Selector.
	! !

!CodeCoverageAnalyzerTest methodsFor: 'setUp/tearDown' stamp: 'NPM 1/16/2021 17:47:25'!
tearDown

	super tearDown.
	
	self tearDownCodeCoverageAnalyzer
	! !

!CodeCoverageAnalyzerTest methodsFor: 'setUp/tearDown' stamp: 'NPM 1/16/2021 17:47:25'!
tearDownCodeCoverageAnalyzer

	^ codeCoverageAnalyzer ifNotNil: [ 
		codeCoverageAnalyzer ifRunning: [
			codeCoverageAnalyzer stopTrackingCodeCoverage ] ]! !

!CodeCoverageAnalyzerTest methodsFor: 'test objects' stamp: 'NPM 1/10/2021 16:50:03'!
compiledMethodAtM1Selector

	^ self class compiledMethodAt: #m1! !

!CodeCoverageAnalyzerTest methodsFor: 'test objects' stamp: 'NPM 1/16/2021 18:15:10'!
m1

	"This method is intentionally not empty to test whether it was covered or not.
	Its behavior does not really matter." 

	Object new! !

!CodeCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/16/2021 17:21:33'!
test001_IsNotRunningWhenCreated

	self setupCodeCoverageAnalyzerForM1Method.
	
	self denyCodeCoverageAnalyzerIsRunning.! !

!CodeCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 2/15/2021 18:27:15'!
test002_IsRunningWhenStarted

	self setupCodeCoverageAnalyzerForM1Method.

	self startTrackingCodeCoverage.
	
	self assertCodeCoverageAnalyzerIsRunning! !

!CodeCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/16/2021 18:12:53'!
test003_IsNotRunningWhenStopped

	self setupCodeCoverageAnalyzerForM1Method;
		startTrackingCodeCoverage.
	
	self stopTrackingCodeCoverage.
	
	self denyCodeCoverageAnalyzerIsRunning! !

!CodeCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/16/2021 18:01:53'!
test004_DoesNotAnalyzeCompiledMethodsWhenItIsCreated

	self setupCodeCoverageAnalyzerForM1Method.
	
	self denyM1IsBeingAnalyzed.! !

!CodeCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/16/2021 18:01:58'!
test005_AnalyzesCompiledMethodsWhenItIsStarted

	self setupCodeCoverageAnalyzerForM1Method.
		
	self startTrackingCodeCoverage.
	
	self assertM1IsBeingAnalyzed.! !

!CodeCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/16/2021 18:13:00'!
test006_StopsAnalyzingCompiledMethodsWhenItIsStopped

	self setupCodeCoverageAnalyzerForM1Method;
		startTrackingCodeCoverage.
	
	self stopTrackingCodeCoverage.
	
	self denyM1IsBeingAnalyzed.! !

!CodeCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/16/2021 18:45:08'!
test007_DoesNothingWhenStartedMoreThanOnce

	| analyzedM1Method |
	self setupCodeCoverageAnalyzerForM1Method;
		startTrackingCodeCoverage.
	analyzedM1Method := self compiledMethodAtM1Selector.
	
	self startTrackingCodeCoverage.
	
	self assertCodeCoverageAnalyzerIsRunning.
	self assert: analyzedM1Method equals: self compiledMethodAtM1Selector! !

!CodeCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/16/2021 18:46:32'!
test008_DoesNothingWhenStoppedMoreThanOnce

	self setupCodeCoverageAnalyzerForM1Method;
		startTrackingCodeCoverage;
		stopTrackingCodeCoverage.

	self stopTrackingCodeCoverage.
	
	self denyCodeCoverageAnalyzerIsRunning.
	self denyM1IsBeingAnalyzed! !

!CodeCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/20/2021 02:43:01'!
test009_DoesNotAllowRequestingCodeCoverageReportsWhileItIsRunning

	self setupCodeCoverageAnalyzerForM1Method;
		startTrackingCodeCoverage.
	
	self assertRaisesReportsAreNotAvailableWhileRunningError: [ codeCoverageAnalyzer report ].
	! !

!CodeCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/20/2021 02:43:01'!
test010_DoesNotAllowRequestingTheCodeCoverageReportForASystemCategoryThatWasNotAnalyzed

	self setupCodeCoverageAnalyzerForM1Method;
		startTrackingCodeCoverage;
		stopTrackingCodeCoverage.
	
	self assertRaisesSystemCategoryWasNotAnalizedError: [ codeCoverageAnalyzer report reportForSystemCategory: #foo ].! !

!CodeCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/20/2021 02:43:01'!
test011_DoesNotAllowRequestingTheCodeCoverageReportForAClassThatWasNotAnalyzed

	self setupCodeCoverageAnalyzerForM1Method;
		startTrackingCodeCoverage;
		stopTrackingCodeCoverage.
	
	self assertRaisesClassWasNotAnalizedError: [ codeCoverageAnalyzer report reportForClass: Object ].! !

!CodeCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/20/2021 02:43:01'!
test012_DoesNotAllowRequestingTheCodeCoverageReportForACompiledMethodThatWasNotAnalyzed

	self setupCodeCoverageAnalyzerForM1Method;
		startTrackingCodeCoverage;
		stopTrackingCodeCoverage.
	
	self assertRaisesCompiledMethodWasNotAnalizedError:  [ codeCoverageAnalyzer report reportForCompiledMethod: Object>>#value ]! !

!CodeCoverageTest methodsFor: 'assertions' stamp: 'NPM 2/14/2021 12:54:21'!
assert: aSelector at: aSourceRange hasSourceCode: expectedSourceCode coverageRatio: aRatio 
	
	| compiledMethod report |
	compiledMethod := self class>>aSelector.
	report := coverageReport reportForCompiledMethod: compiledMethod.
	
	self
		assert: expectedSourceCode
		equals: (compiledMethod sourceCode copyFrom: aSourceRange first to: aSourceRange last).
	self
		assert: aRatio
		equals: (report coverageRatioOf: aSourceRange).! !

!CodeCoverageTest methodsFor: 'assertions' stamp: 'NPM 2/14/2021 12:50:07'!
assert: aSelector hasBeenCoveredFrom: sourceRangeStart to: sourceRangeEnd as: expectedSourceCode 
	
	self
		assert: aSelector
		at: (sourceRangeStart to: sourceRangeEnd)
		hasSourceCode: expectedSourceCode
		coverageRatio: 1! !

!CodeCoverageTest methodsFor: 'assertions' stamp: 'NPM 2/14/2021 12:50:07'!
assert: aSelector hasBeenHalfCoveredFrom: sourceRangeStart to: sourceRangeEnd as: expectedSourceCode 
	
	self
		assert: aSelector
		at: (sourceRangeStart to: sourceRangeEnd)
		hasSourceCode: expectedSourceCode
		coverageRatio: 0.5! !

!CodeCoverageTest methodsFor: 'assertions' stamp: 'NPM 2/16/2021 20:50:30'!
assert: aSelector hasNumberOfCoveredRanges: numberOfCoveredSourceRanges andNumberOfSourceRanges: numberOfSourceRanges  
	
	| report |
	report := self reportForExampleNamed: aSelector.
	
	"NPM: Uncomment or evaluate the following line to automatically generate and copy assertions to the clipboard."
	"self generateAssertionsFor: report."
	
	self
		assert: numberOfSourceRanges
		equals: report numberOfSourceRanges.
	self
		assert: numberOfCoveredSourceRanges
		equals: report totalCoveredSourceRanges! !

!CodeCoverageTest methodsFor: 'assertions' stamp: 'NPM 1/20/2021 02:19:41'!
assertCoveragePercentOfClass: aClass is: aPercentage

	self
		assert: aPercentage
		equals: (coverageReport reportForClass: aClass) percentCovered! !

!CodeCoverageTest methodsFor: 'assertions' stamp: 'NPM 1/20/2021 02:19:41'!
assertCoveragePercentOfSystemCategory: aSystemCategory is: aPercentage

	self
		assert: aPercentage
		equals: (coverageReport reportForSystemCategory: aSystemCategory) percentCovered! !

!CodeCoverageTest methodsFor: 'assertions' stamp: 'NPM 1/20/2021 02:15:32'!
assertNumberOfCoveredRangesFor: aSelector is: aQuantity 

	self
		assert: aSelector
		hasNumberOfCoveredRanges: aQuantity
		andNumberOfSourceRanges: aQuantity! !

!CodeCoverageTest methodsFor: 'assertions' stamp: 'NPM 1/20/2021 02:21:22'!
assertPercentCoverageForExampleNamed: aSelector is: aPercentage 
	
	self
		assert: aPercentage
		equals: (self reportForExampleNamed: aSelector) percentCovered.! !

!CodeCoverageTest methodsFor: 'assertions' stamp: 'NPM 1/20/2021 02:20:00'!
deny: aSymbol hasBeenCoveredFrom: sourceRangeStart to: sourceRangeEnd as: expectedSourceCode 
	
	| compiledMethod report |
	compiledMethod := self class >> aSymbol.
	report := self reportForExampleNamed: aSymbol.
	
	self assert: (report uncoveredSourceRanges includes: (sourceRangeStart to: sourceRangeEnd)).
	self assert: expectedSourceCode equals: (compiledMethod sourceCode copyFrom: sourceRangeStart to: sourceRangeEnd).! !

!CodeCoverageTest methodsFor: 'assertions' stamp: 'NPM 2/15/2021 17:50:43'!
generateAssertionsFor: report 
	
	"NPM: for use during development only.
	Generates assertions for using in tests from report.
	Hacky, but it does the job."
	
	| assertions assertionsSourceCode sortedSourceRanges sourceCode sourceCodeByRange sourceRanges |
	sourceRanges := report fullyCoveredSourceRanges, report partiallyCoveredSourceRanges, report uncoveredSourceRanges.
	sortedSourceRanges := sourceRanges asOrderedCollection sort: [ :sourceRange :otherSourceRange | sourceRange first < otherSourceRange first ].
	
	sourceCode := report compiledMethod sourceCode.
	sourceCodeByRange := sortedSourceRanges
		inject: OrderedDictionary new
		into: [ :result :sourceCodeRange |
			result
				at: sourceCodeRange
				put: (sourceCode copyFrom: sourceCodeRange first to: sourceCodeRange last);
				yourself ].
	
	assertions := OrderedCollection streamContents: [ :contents | 
		sourceCodeByRange keysAndValuesDo: [ :sourceRange :sourceRangeCode | | assertion assertionKind | 
			assertionKind := (sourceRanges includes: sourceRange)
				ifTrue: [ 'assert' ] ifFalse: [ 'deny' ].
				
			assertion := 'self {1}: #{2} hasBeenCoveredFrom: {3} to: {4} as: ''{5}''.' format: {
				assertionKind.
				report selector asString.
				sourceRange first asString.
				sourceRange last asString.
				sourceRangeCode }.
			
			contents nextPut: assertion ]].
	
	assertionsSourceCode := (String newLineString, String tab) join: assertions.
	
	Clipboard storeObject: assertionsSourceCode.! !

!CodeCoverageTest methodsFor: 'exercising' stamp: 'NPM 1/20/2021 02:43:01'!
collectCodeCoverageDuring:  aBlock
	
	[
		codeCoverageAnalyzer value: aBlock
	] ensure: [
		coverageReport := codeCoverageAnalyzer report
	]! !

!CodeCoverageTest methodsFor: 'exercising' stamp: 'NPM 1/18/2021 19:28:52'!
collectCoverageForExampleNamed: aSelector

	self setupCodeCoverageAnalyzerForExampleNamed: aSelector.
	
	self collectCodeCoverageDuring: [ self perform: aSelector ].! !

!CodeCoverageTest methodsFor: 'exercising' stamp: 'NPM 2/7/2021 23:21:35'!
collectCoverageForExampleNamed: aSelector with: argument

	self setupCodeCoverageAnalyzerForExampleNamed: aSelector.
	
	self collectCodeCoverageDuring: [ self perform: aSelector with: argument ].! !

!CodeCoverageTest methodsFor: 'exercising' stamp: 'NPM 1/20/2021 02:20:00'!
reportForExampleNamed: aSelector

	^ coverageReport reportForCompiledMethod: self class>>aSelector! !

!CodeCoverageTest methodsFor: 'exercising' stamp: 'NPM 1/20/2021 02:37:23'!
setupCodeCoverageAnalyzerForAll: compiledMethodsToAnalyze

	"NPM: Make sure to tear down the existing code coverage analyzer before creating a new one.
	Useful during debugging when restarting the context does not run the test case's tearDown method"
	self tearDownCodeCoverageAnalyzer.
	
	codeCoverageAnalyzer := CodeCoverageAnalyzer toAnalyzeAll: compiledMethodsToAnalyze! !

!CodeCoverageTest methodsFor: 'exercising' stamp: 'NPM 1/20/2021 02:12:15'!
setupCodeCoverageAnalyzerForExampleNamed: aSelector

	self setupCodeCoverageAnalyzerForAll: {self class>>aSelector}! !

!CodeCoverageTest methodsFor: 'setUp/tearDown' stamp: 'NPM 1/16/2021 20:03:58'!
tearDown

	super tearDown.
	
	self tearDownCodeCoverageAnalyzer! !

!CodeCoverageTest methodsFor: 'setUp/tearDown' stamp: 'NPM 1/20/2021 02:12:45'!
tearDownCodeCoverageAnalyzer

	codeCoverageAnalyzer ifNotNil: [ codeCoverageAnalyzer stopTrackingCodeCoverage ]! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/8/2021 09:09:22'!
assignBlockTemporary: aValue
	
	"This example returns 1 when evaluating the block to avoid excersicing the boolean selector feature as well"
	
	[ |a|
		a _ aValue.
		1 ] value! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 17:57:15'!
assignVariableToItself
	
	instanceVariable := instanceVariable ! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 16:43:02'!
assignment
	
	instanceVariable := 1! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 18:11:58'!
backtick
	
	`Object new`! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 15:26:18'!
binaryMessageSend
	
	Array with: Object! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 18:27:39'!
block
	
	[ 1 ] value! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/8/2021 00:16:11'!
blockWithArgument: anArgument

	[ :arg | arg printString ] value: anArgument! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/8/2021 00:13:38'!
blockWithArgumentAssignedToFalse

	[ :arg | arg printString ] value: false! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/8/2021 00:12:29'!
blockWithArgumentAssignedToTrue

	[ :arg | arg printString ] value: true! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/29/2021 02:33:18'!
blockWithArgumentUsedManyTimes

	[ :argument | argument + argument ] value: 1! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/19/2021 18:52:22'!
blockWithArguments
	
	[ :a :b | a + b ] value: 1 value: 2! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/29/2021 02:43:56'!
blockWithReadAndWrittenTemporaryVariable

	[ |a| a := 1. a ] value! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/29/2021 02:38:08'!
blockWithReadTemporaryVariable

	[ |a| a ] value! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 18:32:45'!
blockWithTemporariesDeclaration
	
	[ | a | ] value! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 18:34:01'!
blockWithTemporaryVariables
	
	[ | a b |
		a := 1.
		b := 2 ] value! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/16/2021 20:31:45'!
blockWithUnusedArgument

	[ :a | ] value: 1! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/29/2021 02:40:14'!
blockWithWrittenTemporaryVariable

	[ |a| a :=1 ] value! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 18:35:30'!
braceNode
	
	{ 1 }! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/14/2020 01:25:18'!
cascade
	
	Object
		new;
		value! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/3/2021 12:28:37'!
cascadeNodeWithBlockReceiverThatIsEvaluated

	[ self value ]
		class;
		value! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/3/2021 12:29:28'!
cascadeNodeWithBlockReceiverThatIsNotEvaluated

	[ self value ]
		class;
		hash! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/3/2021 12:25:02'!
cascadeNodeWithMessageSendReceiver

	OrderedCollection new
		add: 1;
		add: 2! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/19/2021 01:25:43'!
classVariableAssignedToABooleanAndThenToANonBoolean

	ClassVariable _ true.
	ClassVariable _ 1.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/19/2021 01:43:13'!
classVariableAssignedToABooleanMoreThanOnce

	ClassVariable _ true.
	ClassVariable _ true.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/19/2021 01:25:54'!
classVariableAssignedToANonBooleanAndThenToABoolean

	ClassVariable _ 1.
	ClassVariable _ true.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/19/2021 01:25:18'!
classVariableAssignedToFalse

	ClassVariable _ false! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/19/2021 01:25:07'!
classVariableAssignedToTrue

	ClassVariable _ true! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/19/2021 01:41:35'!
classVariableAssignedToTrueAndFalse

	ClassVariable _ true.
	ClassVariable _ false.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 18:24:46'!
emptyBlock
	
	[] value! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/11/2021 17:29:25'!
emptyMethod! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/16/2021 20:43:30'!
emptyMethodWithUnusedArgument: arg! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/11/2021 20:05:08'!
errorMessageForTesting
	
	^ 'This is an error message used for code coverage tests'! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/11/2021 17:12:32'!
foo: aBoolean

	aBoolean
		ifTrue: [ 1 ]
		ifFalse: [ 2 ] ! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/3/2021 21:18:13'!
implicitSelfReturn
	
	"This method has an implicit self return"! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/19/2020 13:47:11'!
implicitSelfReturnWhenSelfIsReferenced
	
	self value.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 15:44:04'!
instanceVariable
	
	instanceVariable.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/15/2021 17:59:25'!
instanceVariableAssignedToABooleanAndThenToANonBoolean

	instanceVariable _ true.
	instanceVariable _ 1.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/15/2021 17:57:37'!
instanceVariableAssignedToANonBooleanAndThenToABoolean

	instanceVariable _ 1.
	instanceVariable _ true.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/15/2021 17:33:58'!
instanceVariableAssignedToFalse

	instanceVariable _ false! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/15/2021 17:33:53'!
instanceVariableAssignedToTrue

	instanceVariable _ true! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/15/2021 17:51:47'!
instanceVariableAssignedToTrueAndFalse

	instanceVariable _ true.
	instanceVariable _ false.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/15/2021 17:54:11'!
instanceVariableAssignedToTrueMoreThanOnce
	
	instanceVariable _ true.
	instanceVariable _ true.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 15:30:09'!
keywordMessageSend
	
	Array with: Object with: ProtoObject! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/17/2021 20:05:45'!
literal
	
	1! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/16/2021 20:00:46'!
literalVariable
	
	Object! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 15:11:45'!
manyLiteralVariables
	
	Object.
	ProtoObject.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 15:38:07'!
manyLiterals
	
	1.
	2.
	! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 16:02:07'!
manyTemporaryVariables
	
	| a b |
	
	a.
	b.
	! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/29/2021 02:18:45'!
messageArgumentUsedManyTimes: anArgument

	anArgument.
	anArgument.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/8/2021 08:17:16'!
messageSendReturningMessageResultInstanceVariable

	self returnMessageResultInstanceVariable! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/3/2021 12:44:34'!
messageSendWithBlockReceiverThatIsEvaluated

	[ Object new ]
		value! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/3/2021 12:45:26'!
messageSendWithBlockReceiverThatIsNotEvaluated

	[ Object new ]
		class! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/3/2021 12:43:14'!
messageSendWithMessageSendReceiver

	(OrderedCollection new)
		value! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/17/2021 21:25:53'!
messageWithArgument: anArgument
	
	anArgument value! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/29/2021 02:07:53'!
messageWithUnusedArgument: anArgument

	[ anArgument ]! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/8/2021 09:06:29'!
methodWithOneArgument: arg

	arg! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 17:53:42'!
multipleAssignments
	
	instanceVariable := 1.
	otherInstanceVariable := 2.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 18:13:39'!
multipleBacktickNodes
	
	`Object new`.
	`Array new`.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 18:36:54'!
multipleBraceNodes
	
	{ 1 }.
	{ 2 }.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 18:26:25'!
multipleEmptyBlocks
	
	[ 1 ] value.
	[ 2 ] value.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 15:45:07'!
multipleInstanceVariables
	
	instanceVariable.
	otherInstanceVariable.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 15:32:28'!
multipleOcurrencesOfAnArgumentInAMessageSend
	
	Array with: Object with: Object! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 15:30:39'!
multipleOcurrencesOfTheReceiverInAMessageSend
	
	Array with: Array with: Array! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 17:54:35'!
multipleOcurrencesOfTheSameAssignment
	
	instanceVariable := 1.
	instanceVariable := 2.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 18:14:33'!
multipleOcurrencesOfTheSameBacktickNode
	
	`Object new`.
	`Object new`! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 18:28:39'!
multipleOcurrencesOfTheSameBlockNode
	
	[ 1 ] value.
	[ 1 ] value.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 18:37:36'!
multipleOcurrencesOfTheSameBraceNode
	
	{ 1 }.
	{ 1 }.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 15:46:01'!
multipleOcurrencesOfTheSameInstanceVariable
	
	instanceVariable.
	instanceVariable.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 15:40:10'!
multipleOcurrencesOfTheSameLiteral
	
	1.
	1.
	! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 15:15:16'!
multipleOcurrencesOfTheSameLiteralVariables
	
	Object.
	Object.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 15:22:38'!
multipleOcurrencesOfTheSameMessageSend
	
	Object new.
	Object new.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 16:38:50'!
multipleOcurrencesOfTheSameReturnNodes
	
	[ ^ 1 ].
	
	^ 1! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 16:03:08'!
multipleOcurrencesOfTheSameTemporaryVariable
	
	| a |
	
	a.
	a.
	! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 16:25:53'!
multipleOcurrencesOftheSameVariable
	
	true.
	true.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 16:36:51'!
multipleReturnNodes
	
	[ ^ 1 ].
	
	^ 2! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 16:24:19'!
mutipleVariableNodes
	
	true.
	false.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 18:29:40'!
notEvaluatedBlockNode
	
	[ 1 ]! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 17:55:35'!
notExecutedAssignment
	
	[ instanceVariable := 1 ]! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 18:15:33'!
notExecutedBacktickNode
	
	[ `Object new` ]! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 18:38:25'!
notExecutedBraceNode
	
	[ { 1 } ]! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 15:47:09'!
notExecutedInstanceVariable
	
	[ instanceVariable ]! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 15:41:22'!
notExecutedLiteral
	
	[ 1 ]! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 15:24:27'!
notExecutedLiteralVariable
	
	[ Object ]! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/20/2020 02:16:15'!
notExecutedMessageArgument
	
	Array
		with: [ self value ]
		with: [ self printString ]! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 15:19:10'!
notExecutedMessageSend
	
	[ Object new ]! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 16:37:54'!
notExecutedReturnNode
	
	[ ^ 1 ]! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 16:04:23'!
notExecutedTemporaryVariable
	
	| a |
	
	[ a ]! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 16:27:06'!
notExecutedVariable
	
	[ true ]! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/19/2020 14:11:45'!
optimizedMessage
	
	1 to: 10 do: [ :number | number value ]! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/11/2021 20:18:09'!
raiseError

	Error signal: self errorMessageForTesting ! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/28/2021 17:08:52'!
raiseErrorFromBlock

	[ self error: self errorMessageForTesting ] value! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 16:32:26'!
return
	
	^ 1! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/8/2021 08:17:34'!
returnMessageResultInstanceVariable
	
	^ messageResult ! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 15:50:47'!
temporaryVariable
	
	| a |
	
	a.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/6/2021 21:13:38'!
temporaryVariableAssignedToBooleanAndThenNonBoolean

	| a |
	
	a _ true.
	a _ 1.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/2/2021 21:57:24'!
temporaryVariableAssignedToFalse

	| a |
	
	a _ false! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/6/2021 21:09:46'!
temporaryVariableAssignedToNonBooleanAndThenBoolean

	| a |
	
	a _ 1.
	a _ true.
! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/2/2021 21:47:01'!
temporaryVariableAssignedToTrue

	| a |
	
	a _ true! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/2/2021 21:58:12'!
temporaryVariableAssignedToTrueAndFalse

	| a |
	
	a _ true.
	a _ false.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/2/2021 22:06:07'!
temporaryVariableAssignedToTrueMoreThanOnce

	| a |
	
	a _ true.
	a _ true.! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/28/2021 19:07:20'!
temporaryVariableAssignment

	| a |

	a := 1! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/28/2021 20:59:08'!
temporaryVariableReadAndAssignment

	| a |
	a := 1.

	a! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 15:13:06'!
unaryMessageSend
	
	Object new! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 2/16/2021 20:51:38'!
unusedTemporaryVariableDeclaration
	
	| a |! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 1/10/2021 16:57:28'!
value

	"This example overrides uses super to send the same message that was received.
	
	It is used to verify that a bug was not introduced by the code coverage machinery, because
	wrapping super in a message to track code coverage will return self and the #value message
	will end up being dispatched to self instead of super (as intended) leading to an infinite loop."

	super value! !

!CodeCoverageTest methodsFor: 'test objects' stamp: 'NPM 12/13/2020 16:23:17'!
variableNode
	
	true.! !

!CodeCoverageTest methodsFor: 'tests - class coverage report' stamp: 'NPM 1/20/2021 02:13:25'!
test036_Informs0PercentCoverageWhenNoneOfTheAnalyzedCompiledMethodsOfAClassHaveBeenCovered

	self setupCodeCoverageAnalyzerForExampleNamed: #foo:.
	
	self collectCodeCoverageDuring: [].
		
	self assertCoveragePercentOfClass: self class is: 0! !

!CodeCoverageTest methodsFor: 'tests - class coverage report' stamp: 'NPM 1/20/2021 02:13:25'!
test039_Informs100PercentCoverageWhenAllOfTheAnalyzedCompiledMethodsOfAClassHaveBeenCovered

	self collectCoverageForExampleNamed: #emptyMethod.
		
	self
		assertCoveragePercentOfClass: self class
		is: 100! !

!CodeCoverageTest methodsFor: 'tests - class coverage report' stamp: 'NPM 2/14/2021 19:57:41'!
test040_CalculatesThePercentCoverageOfAClassBasedOnThePercentCoverageOfItsAnalyzedCompiledMethods
	
	self setupCodeCoverageAnalyzerForAll: {self class>>#emptyMethod. self class>>#foo:}.
	
	self collectCodeCoverageDuring: [
		self emptyMethod.
		self foo: true
	].
		
	self assertCoveragePercentOfClass: self class is: 83.33! !

!CodeCoverageTest methodsFor: 'tests - class coverage report' stamp: 'NPM 2/14/2021 19:56:16'!
test041_OverwritesCodeCoverageReportsForClassesGeneratedFromPreviouslyAnalizedBlocks

	self setupCodeCoverageAnalyzerForAll: {self class>>#emptyMethod. self class>>#foo:}.
	
	self collectCodeCoverageDuring: [ 	self emptyMethod ].
	self collectCodeCoverageDuring: [ self foo: true ].
		
	self assertCoveragePercentOfClass: self class is: 33.33! !

!CodeCoverageTest methodsFor: 'tests - compiled method coverage report' stamp: 'NPM 1/20/2021 02:21:22'!
test029_Informs0PercentCoverageWhenNoneOfTheCompiledMethodCollaborationsAreCovered

	self setupCodeCoverageAnalyzerForExampleNamed: #foo:.
	
	self collectCodeCoverageDuring: [].
	
	self assertPercentCoverageForExampleNamed: #foo: is: 0! !

!CodeCoverageTest methodsFor: 'tests - compiled method coverage report' stamp: 'NPM 1/20/2021 02:39:04'!
test030_Informs100PercentCoverageWhenAllOfTheCompiledMethodCollaborationsAreCovered

	self setupCodeCoverageAnalyzerForExampleNamed: #foo:.
	
	self collectCodeCoverageDuring: [ self foo: true. self foo: false ].
	
	self assertPercentCoverageForExampleNamed: #foo: is: 100.! !

!CodeCoverageTest methodsFor: 'tests - compiled method coverage report' stamp: 'NPM 2/14/2021 19:58:41'!
test030_InformsThePercentageOfCollaborationsThatWereCoveredInACompiledMethod

	self setupCodeCoverageAnalyzerForExampleNamed: #foo:.
	
	self collectCodeCoverageDuring: [ self foo: false ].
	
	self assertPercentCoverageForExampleNamed: #foo: is: 66.67! !

!CodeCoverageTest methodsFor: 'tests - compiled method coverage report' stamp: 'NPM 2/14/2021 19:58:33'!
test031_DoesNotCountCoveredCollaborationsMoreThanOnce

	self setupCodeCoverageAnalyzerForExampleNamed: #foo:.
	
	self collectCodeCoverageDuring: [ self foo: false. self foo: false ].
	
	self assertPercentCoverageForExampleNamed: #foo: is: 66.67! !

!CodeCoverageTest methodsFor: 'tests - compiled method coverage report' stamp: 'NPM 1/20/2021 02:40:05'!
test032_AppendsCoveredCollaborationsMadeFromDifferentCallsToACompiledMethod

	self setupCodeCoverageAnalyzerForExampleNamed: #foo:.
	
	self collectCodeCoverageDuring: [ self foo: true. self foo: false ].
	
	self assertPercentCoverageForExampleNamed: #foo: is: 100! !

!CodeCoverageTest methodsFor: 'tests - compiled method coverage report' stamp: 'NPM 2/14/2021 19:58:48'!
test034_OverwritesCodeCoverageReportsGeneratedFromPreviouslyAnalizedBlocks

	self setupCodeCoverageAnalyzerForExampleNamed: #foo:.
	self collectCodeCoverageDuring: [ self foo: true. self foo: false ].
	
	self collectCodeCoverageDuring: [ self foo: true. ].
	
	self assertPercentCoverageForExampleNamed: #foo: is: 66.67! !

!CodeCoverageTest methodsFor: 'tests - compiled method coverage report' stamp: 'NPM 1/20/2021 02:40:36'!
test035_Informs100PercentCoverageWhenCoveringAnEmptyCompiledMethod

	
	self collectCoverageForExampleNamed: #emptyMethod.
	
	self assertPercentCoverageForExampleNamed: #emptyMethod is: 100! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/14/2021 19:33:32'!
test059_PartiallyCoversABooleanTemporaryVariableDeclarationThatHasOnlyBeenAssignedToTrue

	self collectCoverageForExampleNamed: #temporaryVariableAssignedToTrue.

	self assertNumberOfCoveredRangesFor: #temporaryVariableAssignedToTrue is: 3.
	self assert: #temporaryVariableAssignedToTrue hasBeenHalfCoveredFrom: 37 to: 37 as: 'a'.
	self assert: #temporaryVariableAssignedToTrue hasBeenHalfCoveredFrom: 44 to: 44 as: 'a'.
	self assert: #temporaryVariableAssignedToTrue hasBeenCoveredFrom: 48 to: 51 as: 'true'.
	self assertPercentCoverageForExampleNamed: #temporaryVariableAssignedToTrue is: 66.67.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/14/2021 19:33:43'!
test060_PartiallyCoversABooleanTemporaryVariableDeclarationThatHasOnlyBeenAssignedToFalse

	self collectCoverageForExampleNamed: #temporaryVariableAssignedToFalse.

	self assertNumberOfCoveredRangesFor: #temporaryVariableAssignedToFalse is: 3.
	self assert: #temporaryVariableAssignedToFalse hasBeenHalfCoveredFrom: 38 to: 38 as: 'a'.
	self assert: #temporaryVariableAssignedToFalse hasBeenHalfCoveredFrom: 45 to: 45 as: 'a'.
	self assert: #temporaryVariableAssignedToFalse hasBeenCoveredFrom: 49 to: 53 as: 'false'.
	self assertPercentCoverageForExampleNamed: #temporaryVariableAssignedToFalse is: 66.67.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/6/2021 20:58:27'!
test061_FullyCoversABooleanTemporaryVariableDeclarationThatHasBeenAssignedToTrueAndFalse

	self collectCoverageForExampleNamed: #temporaryVariableAssignedToTrueAndFalse.

	self assertNumberOfCoveredRangesFor: #temporaryVariableAssignedToTrueAndFalse is: 5.
	self assert: #temporaryVariableAssignedToTrueAndFalse hasBeenCoveredFrom: 45 to: 45 as: 'a'.
	self assert: #temporaryVariableAssignedToTrueAndFalse hasBeenCoveredFrom: 52 to: 52 as: 'a'.
	self assert: #temporaryVariableAssignedToTrueAndFalse hasBeenCoveredFrom: 56 to: 59 as: 'true'.
	self assert: #temporaryVariableAssignedToTrueAndFalse hasBeenCoveredFrom: 63 to: 63 as: 'a'.
	self assert: #temporaryVariableAssignedToTrueAndFalse hasBeenCoveredFrom: 67 to: 71 as: 'false'.
	self assertPercentCoverageForExampleNamed: #temporaryVariableAssignedToTrueAndFalse is: 100.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/14/2021 19:34:14'!
test062_DoesNotCountMultipleAssignmentsWithTheSameValueToBooleanTemporaryVariables

	self collectCoverageForExampleNamed: #temporaryVariableAssignedToTrueMoreThanOnce.

	self assertNumberOfCoveredRangesFor: #temporaryVariableAssignedToTrueMoreThanOnce is: 5.
	self assert: #temporaryVariableAssignedToTrueMoreThanOnce hasBeenHalfCoveredFrom: 49 to: 49 as: 'a'.
	self assert: #temporaryVariableAssignedToTrueMoreThanOnce hasBeenHalfCoveredFrom: 56 to: 56 as: 'a'.
	self assert: #temporaryVariableAssignedToTrueMoreThanOnce hasBeenCoveredFrom: 60 to: 63 as: 'true'.
	self assert: #temporaryVariableAssignedToTrueMoreThanOnce hasBeenHalfCoveredFrom: 67 to: 67 as: 'a'.
	self assert: #temporaryVariableAssignedToTrueMoreThanOnce hasBeenCoveredFrom: 71 to: 74 as: 'true'.
	self assertPercentCoverageForExampleNamed: #temporaryVariableAssignedToTrueMoreThanOnce is: 70.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/6/2021 21:15:41'!
test063_DoesNotConsiderATemporaryDeclarationAsBooleanWhenItIsAssignedToABooleanAndThenToANonBoolean

	self collectCoverageForExampleNamed: #temporaryVariableAssignedToBooleanAndThenNonBoolean.

	self assertNumberOfCoveredRangesFor: #temporaryVariableAssignedToBooleanAndThenNonBoolean is: 5.
	self assert: #temporaryVariableAssignedToBooleanAndThenNonBoolean hasBeenCoveredFrom: 57 to: 57 as: 'a'.
	self assert: #temporaryVariableAssignedToBooleanAndThenNonBoolean hasBeenCoveredFrom: 64 to: 64 as: 'a'.
	self assert: #temporaryVariableAssignedToBooleanAndThenNonBoolean hasBeenCoveredFrom: 68 to: 71 as: 'true'.
	self assert: #temporaryVariableAssignedToBooleanAndThenNonBoolean hasBeenCoveredFrom: 75 to: 75 as: 'a'.
	self assert: #temporaryVariableAssignedToBooleanAndThenNonBoolean hasBeenCoveredFrom: 79 to: 79 as: '1'.
	self assertPercentCoverageForExampleNamed: #temporaryVariableAssignedToBooleanAndThenNonBoolean is: 100.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/6/2021 21:16:03'!
test064_DoesNotConsiderATemporaryDeclarationAsBooleanWhenItIsAssignedToANonBooleanAndThenToABoolean

	self collectCoverageForExampleNamed: #temporaryVariableAssignedToNonBooleanAndThenBoolean.

	self assertNumberOfCoveredRangesFor: #temporaryVariableAssignedToNonBooleanAndThenBoolean is: 5.
	self assert: #temporaryVariableAssignedToNonBooleanAndThenBoolean hasBeenCoveredFrom: 57 to: 57 as: 'a'.
	self assert: #temporaryVariableAssignedToNonBooleanAndThenBoolean hasBeenCoveredFrom: 64 to: 64 as: 'a'.
	self assert: #temporaryVariableAssignedToNonBooleanAndThenBoolean hasBeenCoveredFrom: 68 to: 68 as: '1'.
	self assert: #temporaryVariableAssignedToNonBooleanAndThenBoolean hasBeenCoveredFrom: 72 to: 72 as: 'a'.
	self assert: #temporaryVariableAssignedToNonBooleanAndThenBoolean hasBeenCoveredFrom: 76 to: 79 as: 'true'.
	self assertPercentCoverageForExampleNamed: #temporaryVariableAssignedToNonBooleanAndThenBoolean is: 100.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/14/2021 19:34:42'!
test065_PartiallyCoversABooleanArgumentThatHasOnlyBeenAssignedToTrue

	self collectCoverageForExampleNamed: #methodWithOneArgument: with: true.

	self assertNumberOfCoveredRangesFor: #methodWithOneArgument: is: 2.
	self assert: #methodWithOneArgument: hasBeenHalfCoveredFrom: 24 to: 26 as: 'arg'.
	self assert: #methodWithOneArgument: hasBeenHalfCoveredFrom: 30 to: 32 as: 'arg'.
	self assertPercentCoverageForExampleNamed: #methodWithOneArgument: is: 50.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/14/2021 19:35:04'!
test066_PartiallyCoversABooleanArgumentThatHasOnlyBeenAssignedToFalse

	self collectCoverageForExampleNamed: #methodWithOneArgument: with: false.

	self assertNumberOfCoveredRangesFor: #methodWithOneArgument: is: 2.
	self assert: #methodWithOneArgument: hasBeenHalfCoveredFrom: 24 to: 26 as: 'arg'.
	self assert: #methodWithOneArgument: hasBeenHalfCoveredFrom: 30 to: 32 as: 'arg'.
	self assertPercentCoverageForExampleNamed: #methodWithOneArgument: is: 50.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/8/2021 09:06:48'!
test067_FullyCoversABooleanArgumentThatHasBeenAssignedToTrueAndFalse

	self setupCodeCoverageAnalyzerForExampleNamed: #methodWithOneArgument:.
	
	self collectCodeCoverageDuring: [
		self
			methodWithOneArgument: true;
			methodWithOneArgument: false ].

	self assertNumberOfCoveredRangesFor: #methodWithOneArgument: is: 2.
	self assert: #methodWithOneArgument: hasBeenCoveredFrom: 24 to: 26 as: 'arg'.
	self assert: #methodWithOneArgument: hasBeenCoveredFrom: 30 to: 32 as: 'arg'.
	self assertPercentCoverageForExampleNamed: #methodWithOneArgument: is: 100.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/14/2021 19:40:08'!
test068_DoesNotCountMultipleAssignmentsWithTheSameValueToBooleanArguments

	self setupCodeCoverageAnalyzerForExampleNamed: #methodWithOneArgument:.
	
	self collectCodeCoverageDuring: [
		self
			methodWithOneArgument: true;
			methodWithOneArgument: true ].

	self assertNumberOfCoveredRangesFor: #methodWithOneArgument: is: 2.
	self assert: #methodWithOneArgument: hasBeenHalfCoveredFrom: 24 to: 26 as: 'arg'.
	self assert: #methodWithOneArgument: hasBeenHalfCoveredFrom: 30 to: 32 as: 'arg'.
	self assertPercentCoverageForExampleNamed: #methodWithOneArgument: is: 50.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/8/2021 09:06:56'!
test069_DoesNotConsiderAnArgumentAsBooleanWhenItIsAssignedToABooleanAndThenToANonBoolean

	self setupCodeCoverageAnalyzerForExampleNamed: #methodWithOneArgument:.
	
	self collectCodeCoverageDuring: [
		self
			methodWithOneArgument: true;
			methodWithOneArgument: 1 ].

	self assertNumberOfCoveredRangesFor: #methodWithOneArgument: is: 2.
	self assert: #methodWithOneArgument: hasBeenCoveredFrom: 24 to: 26 as: 'arg'.
	self assert: #methodWithOneArgument: hasBeenCoveredFrom: 30 to: 32 as: 'arg'.
	self assertPercentCoverageForExampleNamed: #methodWithOneArgument: is: 100.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/8/2021 09:07:02'!
test070_DoesNotConsiderAnArgumentAsBooleanWhenItIsAssignedToANonBooleanAndThenToABoolean

	self setupCodeCoverageAnalyzerForExampleNamed: #methodWithOneArgument:.
	
	self collectCodeCoverageDuring: [
		self
			methodWithOneArgument: 1;
			methodWithOneArgument: true ].

	self assertNumberOfCoveredRangesFor: #methodWithOneArgument: is: 2.
	self assert: #methodWithOneArgument: hasBeenCoveredFrom: 24 to: 26 as: 'arg'.
	self assert: #methodWithOneArgument: hasBeenCoveredFrom: 30 to: 32 as: 'arg'.
	self assertPercentCoverageForExampleNamed: #methodWithOneArgument: is: 100.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/14/2021 19:35:27'!
test071_PartiallyCoversABooleanBlockArgumentThatHasOnlyBeenAssignedToTrue

	self collectCoverageForExampleNamed: #blockWithArgumentAssignedToTrue.

	self assertNumberOfCoveredRangesFor: #blockWithArgumentAssignedToTrue is: 5.
	self assert: #blockWithArgumentAssignedToTrue hasBeenHalfCoveredFrom: 38 to: 40 as: 'arg'.
	self assert: #blockWithArgumentAssignedToTrue hasBeenHalfCoveredFrom: 44 to: 46 as: 'arg'.
	self assert: #blockWithArgumentAssignedToTrue hasBeenCoveredFrom: 48 to: 58 as: 'printString'.
	self assert: #blockWithArgumentAssignedToTrue hasBeenCoveredFrom: 62 to: 67 as: 'value:'.
	self assert: #blockWithArgumentAssignedToTrue hasBeenCoveredFrom: 69 to: 72 as: 'true'.
	self assertPercentCoverageForExampleNamed: #blockWithArgumentAssignedToTrue is: 80.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/14/2021 19:36:42'!
test072_PartiallyCoversABooleanBlockArgumentThatHasOnlyBeenAssignedToFalse

	self collectCoverageForExampleNamed: #blockWithArgumentAssignedToFalse.

	self assertNumberOfCoveredRangesFor: #blockWithArgumentAssignedToFalse is: 5.
	self assert: #blockWithArgumentAssignedToFalse hasBeenHalfCoveredFrom: 39 to: 41 as: 'arg'.
	self assert: #blockWithArgumentAssignedToFalse hasBeenHalfCoveredFrom: 45 to: 47 as: 'arg'.
	self assert: #blockWithArgumentAssignedToFalse hasBeenCoveredFrom: 49 to: 59 as: 'printString'.
	self assert: #blockWithArgumentAssignedToFalse hasBeenCoveredFrom: 63 to: 68 as: 'value:'.
	self assert: #blockWithArgumentAssignedToFalse hasBeenCoveredFrom: 70 to: 74 as: 'false'.
	self assertPercentCoverageForExampleNamed: #blockWithArgumentAssignedToFalse is: 80.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/8/2021 00:17:30'!
test073_FullyCoversABooleanBlockArgumentThatHasBeenAssignedToTrueAndFalse

	self setupCodeCoverageAnalyzerForExampleNamed: #blockWithArgument:.
	
	self collectCodeCoverageDuring: [
		self
			blockWithArgument: true;
			blockWithArgument: false ].

	self assertNumberOfCoveredRangesFor: #blockWithArgument: is: 6.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 20 to: 29 as: 'anArgument'.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 36 to: 38 as: 'arg'.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 42 to: 44 as: 'arg'.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 46 to: 56 as: 'printString'.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 60 to: 65 as: 'value:'.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 67 to: 76 as: 'anArgument'.
	self assertPercentCoverageForExampleNamed: #blockWithArgument: is: 100.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/14/2021 19:37:14'!
test074_DoesNotCountMultipleAssignmentsWithTheSameValueToBlockBooleanArguments

	self setupCodeCoverageAnalyzerForExampleNamed: #blockWithArgument:.
	
	self collectCodeCoverageDuring: [
		self
			blockWithArgument: true;
			blockWithArgument: true ].

	self assertNumberOfCoveredRangesFor: #blockWithArgument: is: 6.
	self assert: #blockWithArgument: hasBeenHalfCoveredFrom: 20 to: 29 as: 'anArgument'.
	self assert: #blockWithArgument: hasBeenHalfCoveredFrom: 36 to: 38 as: 'arg'.
	self assert: #blockWithArgument: hasBeenHalfCoveredFrom: 42 to: 44 as: 'arg'.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 46 to: 56 as: 'printString'.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 60 to: 65 as: 'value:'.
	self assert: #blockWithArgument: hasBeenHalfCoveredFrom: 67 to: 76 as: 'anArgument'.
	self assertPercentCoverageForExampleNamed: #blockWithArgument: is: 66.67.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/8/2021 00:21:02'!
test075_DoesNotConsiderABlockArgumentAsBooleanWhenItIsAssignedToABooleanAndThenToANonBoolean

	self setupCodeCoverageAnalyzerForExampleNamed: #blockWithArgument:.
	
	self collectCodeCoverageDuring: [
		self
			blockWithArgument: true;
			blockWithArgument: 1 ].

	self assertNumberOfCoveredRangesFor: #blockWithArgument: is: 6.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 20 to: 29 as: 'anArgument'.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 36 to: 38 as: 'arg'.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 42 to: 44 as: 'arg'.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 46 to: 56 as: 'printString'.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 60 to: 65 as: 'value:'.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 67 to: 76 as: 'anArgument'.
	self assertPercentCoverageForExampleNamed: #blockWithArgument: is: 100.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/8/2021 00:21:18'!
test076_DoesNotConsiderABlockArgumentAsBooleanWhenItIsAssignedToANonBooleanAndThenToABoolean

	self setupCodeCoverageAnalyzerForExampleNamed: #blockWithArgument:.
	
	self collectCodeCoverageDuring: [
		self
			blockWithArgument: 1;
			blockWithArgument: true ].

	self assertNumberOfCoveredRangesFor: #blockWithArgument: is: 6.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 20 to: 29 as: 'anArgument'.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 36 to: 38 as: 'arg'.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 42 to: 44 as: 'arg'.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 46 to: 56 as: 'printString'.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 60 to: 65 as: 'value:'.
	self assert: #blockWithArgument: hasBeenCoveredFrom: 67 to: 76 as: 'anArgument'.
	self assertPercentCoverageForExampleNamed: #blockWithArgument: is: 100.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/14/2021 19:37:48'!
test077_PartiallyCoversABlockBooleanTemporaryVariableDeclarationThatHasOnlyBeenAssignedToTrue

	self collectCoverageForExampleNamed: #assignBlockTemporary: with: true.

	self assertNumberOfCoveredRangesFor: #assignBlockTemporary: is: 6.
	self assert: #assignBlockTemporary: hasBeenHalfCoveredFrom: 23 to: 28 as: 'aValue'.
	self assert: #assignBlockTemporary: hasBeenHalfCoveredFrom: 148 to: 148 as: 'a'.
	self assert: #assignBlockTemporary: hasBeenHalfCoveredFrom: 153 to: 153 as: 'a'.
	self assert: #assignBlockTemporary: hasBeenHalfCoveredFrom: 157 to: 162 as: 'aValue'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 167 to: 167 as: '1'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 171 to: 175 as: 'value'.
	self assertPercentCoverageForExampleNamed: #assignBlockTemporary: is: 66.67.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/14/2021 19:41:57'!
test078_PartiallyCoversABlockBooleanTemporaryVariableDeclarationThatHasOnlyBeenAssignedToFalse

	self collectCoverageForExampleNamed: #assignBlockTemporary: with: false.

	self assertNumberOfCoveredRangesFor: #assignBlockTemporary: is: 6.
	self assert: #assignBlockTemporary: hasBeenHalfCoveredFrom: 23 to: 28 as: 'aValue'.
	self assert: #assignBlockTemporary: hasBeenHalfCoveredFrom: 148 to: 148 as: 'a'.
	self assert: #assignBlockTemporary: hasBeenHalfCoveredFrom: 153 to: 153 as: 'a'.
	self assert: #assignBlockTemporary: hasBeenHalfCoveredFrom: 157 to: 162 as: 'aValue'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 167 to: 167 as: '1'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 171 to: 175 as: 'value'.
	self assertPercentCoverageForExampleNamed: #assignBlockTemporary: is: 66.67.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/8/2021 09:10:05'!
test079_FullyCoversABlockBooleanTemporaryVariableDeclarationThatHasOnlyBeenAssignedToTrueAndFalse

	self setupCodeCoverageAnalyzerForExampleNamed: #assignBlockTemporary:.
	
	self collectCodeCoverageDuring: [
		self
			assignBlockTemporary: true;
			assignBlockTemporary: false ].

	self assertNumberOfCoveredRangesFor: #assignBlockTemporary: is: 6.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 23 to: 28 as: 'aValue'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 148 to: 148 as: 'a'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 153 to: 153 as: 'a'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 157 to: 162 as: 'aValue'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 167 to: 167 as: '1'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 171 to: 175 as: 'value'.
	self assertPercentCoverageForExampleNamed: #assignBlockTemporary: is: 100.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/14/2021 19:42:14'!
test080_DoesNotCountMultipleAssignmentsWithTheSameValueToBlockBooleanTemporaryVariables

	self setupCodeCoverageAnalyzerForExampleNamed: #assignBlockTemporary:.
	
	self collectCodeCoverageDuring: [
		self
			assignBlockTemporary: true;
			assignBlockTemporary: true ].

	self assertNumberOfCoveredRangesFor: #assignBlockTemporary: is: 6.
	self assert: #assignBlockTemporary: hasBeenHalfCoveredFrom: 23 to: 28 as: 'aValue'.
	self assert: #assignBlockTemporary: hasBeenHalfCoveredFrom: 148 to: 148 as: 'a'.
	self assert: #assignBlockTemporary: hasBeenHalfCoveredFrom: 153 to: 153 as: 'a'.
	self assert: #assignBlockTemporary: hasBeenHalfCoveredFrom: 157 to: 162 as: 'aValue'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 167 to: 167 as: '1'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 171 to: 175 as: 'value'.
	self assertPercentCoverageForExampleNamed: #assignBlockTemporary: is: 66.67.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/8/2021 09:10:29'!
test081_DoesNotConsiderABlockTemporaryDeclarationAsBooleanWhenItIsAssignedToABooleanAndThenToANonBoolean

	self setupCodeCoverageAnalyzerForExampleNamed: #assignBlockTemporary:.
	
	self collectCodeCoverageDuring: [
		self
			assignBlockTemporary: true;
			assignBlockTemporary: 1 ].

	self assertNumberOfCoveredRangesFor: #assignBlockTemporary: is: 6.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 23 to: 28 as: 'aValue'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 148 to: 148 as: 'a'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 153 to: 153 as: 'a'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 157 to: 162 as: 'aValue'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 167 to: 167 as: '1'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 171 to: 175 as: 'value'.
	self assertPercentCoverageForExampleNamed: #assignBlockTemporary: is: 100.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/8/2021 09:10:47'!
test082_DoesNotConsiderABlockTemporaryDeclarationAsBooleanWhenItIsAssignedToANonBooleanAndThenToABoolean

	self setupCodeCoverageAnalyzerForExampleNamed: #assignBlockTemporary:.
	
	self collectCodeCoverageDuring: [
		self
			assignBlockTemporary: 1;
			assignBlockTemporary: true ].

	self assertNumberOfCoveredRangesFor: #assignBlockTemporary: is: 6.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 23 to: 28 as: 'aValue'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 148 to: 148 as: 'a'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 153 to: 153 as: 'a'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 157 to: 162 as: 'aValue'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 167 to: 167 as: '1'.
	self assert: #assignBlockTemporary: hasBeenCoveredFrom: 171 to: 175 as: 'value'.
	self assertPercentCoverageForExampleNamed: #assignBlockTemporary: is: 100.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/14/2021 12:30:33'!
test083_PartiallyCoversABooleanSelectorThatOnlyReturnsTrue
	
	messageResult _ true.
	self collectCoverageForExampleNamed: #messageSendReturningMessageResultInstanceVariable.

	self assertNumberOfCoveredRangesFor: #messageSendReturningMessageResultInstanceVariable is: 2.
	self assert: #messageSendReturningMessageResultInstanceVariable hasBeenCoveredFrom: 53 to: 56 as: 'self'.
	self assert: #messageSendReturningMessageResultInstanceVariable hasBeenHalfCoveredFrom: 58 to: 92 as: 'returnMessageResultInstanceVariable'.
	self assertPercentCoverageForExampleNamed: #messageSendReturningMessageResultInstanceVariable is: 75.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/14/2021 12:30:43'!
test084_PartiallyCoversABooleanSelectorThatOnlyReturnsFalse
	
	messageResult _ true.
	self collectCoverageForExampleNamed: #messageSendReturningMessageResultInstanceVariable.

	self assertNumberOfCoveredRangesFor: #messageSendReturningMessageResultInstanceVariable is: 2.
	self assert: #messageSendReturningMessageResultInstanceVariable hasBeenCoveredFrom: 53 to: 56 as: 'self'.
	self assert: #messageSendReturningMessageResultInstanceVariable hasBeenHalfCoveredFrom: 58 to: 92 as: 'returnMessageResultInstanceVariable'.
	self assertPercentCoverageForExampleNamed: #messageSendReturningMessageResultInstanceVariable is: 75.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/8/2021 08:33:39'!
test085_FullyCoversABooleanSelectorThatReturnsTrueAndFalse
	
	self setupCodeCoverageAnalyzerForExampleNamed: #messageSendReturningMessageResultInstanceVariable.
	
	self collectCodeCoverageDuring: [
		messageResult _ true.
		self messageSendReturningMessageResultInstanceVariable.
		messageResult _ false.
		self messageSendReturningMessageResultInstanceVariable ].

	self assertNumberOfCoveredRangesFor: #messageSendReturningMessageResultInstanceVariable is: 2.
	self assert: #messageSendReturningMessageResultInstanceVariable hasBeenCoveredFrom: 53 to: 56 as: 'self'.
	self assert: #messageSendReturningMessageResultInstanceVariable hasBeenCoveredFrom: 58 to: 92 as: 'returnMessageResultInstanceVariable'.
	self assertPercentCoverageForExampleNamed: #messageSendReturningMessageResultInstanceVariable is: 100.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/14/2021 12:30:55'!
test086_DoesNotCountMultipleReturnsOfSameValueFromBooleanSelectors

	self setupCodeCoverageAnalyzerForExampleNamed: #messageSendReturningMessageResultInstanceVariable.
	
	self collectCodeCoverageDuring: [
		messageResult _ true.
		self messageSendReturningMessageResultInstanceVariable.
		messageResult _ true.
		self messageSendReturningMessageResultInstanceVariable ].
	
	self assertNumberOfCoveredRangesFor: #messageSendReturningMessageResultInstanceVariable is: 2.
	self assert: #messageSendReturningMessageResultInstanceVariable hasBeenCoveredFrom: 53 to: 56 as: 'self'.
	self assert: #messageSendReturningMessageResultInstanceVariable hasBeenHalfCoveredFrom: 58 to: 92 as: 'returnMessageResultInstanceVariable'.
	self assertPercentCoverageForExampleNamed: #messageSendReturningMessageResultInstanceVariable is: 75.
! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/8/2021 09:26:22'!
test087_DoesNotConsiderASelectorAsBooleanWhenItReturnsABooleanAndThenANonBoolean

	self setupCodeCoverageAnalyzerForExampleNamed: #messageSendReturningMessageResultInstanceVariable.
	
	self collectCodeCoverageDuring: [
		messageResult _ true.
		self messageSendReturningMessageResultInstanceVariable.
		messageResult _ 1.
		self messageSendReturningMessageResultInstanceVariable ].

	self assertNumberOfCoveredRangesFor: #messageSendReturningMessageResultInstanceVariable is: 2.
	self assert: #messageSendReturningMessageResultInstanceVariable hasBeenCoveredFrom: 53 to: 56 as: 'self'.
	self assert: #messageSendReturningMessageResultInstanceVariable hasBeenCoveredFrom: 58 to: 92 as: 'returnMessageResultInstanceVariable'.
	self assertPercentCoverageForExampleNamed: #messageSendReturningMessageResultInstanceVariable is: 100.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/15/2021 17:33:02'!
test088_DoesNotConsiderASelectorAsBooleanWhenItReturnsANonBooleanAndThenABoolean

	self setupCodeCoverageAnalyzerForExampleNamed: #messageSendReturningMessageResultInstanceVariable.
	
	self collectCodeCoverageDuring: [
		messageResult _ 1.
		self messageSendReturningMessageResultInstanceVariable.
		messageResult _ true.
		self messageSendReturningMessageResultInstanceVariable ].

	self assertNumberOfCoveredRangesFor: #messageSendReturningMessageResultInstanceVariable is: 2.
	self assert: #messageSendReturningMessageResultInstanceVariable hasBeenCoveredFrom: 53 to: 56 as: 'self'.
	self assert: #messageSendReturningMessageResultInstanceVariable hasBeenCoveredFrom: 58 to: 92 as: 'returnMessageResultInstanceVariable'.
	self assertPercentCoverageForExampleNamed: #messageSendReturningMessageResultInstanceVariable is: 100.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/15/2021 17:44:13'!
test090_PartiallyCoversAnInstanceTemporaryVariableDeclarationThatHasOnlyBeenAssignedToTrue

	self collectCoverageForExampleNamed: #instanceVariableAssignedToTrue.

	self assertNumberOfCoveredRangesFor: #instanceVariableAssignedToTrue is: 2.
	self assert: #instanceVariableAssignedToTrue hasBeenHalfCoveredFrom: 34 to: 49 as: 'instanceVariable'.
	self assert: #instanceVariableAssignedToTrue hasBeenCoveredFrom: 53 to: 56 as: 'true'.
	self assertPercentCoverageForExampleNamed: #instanceVariableAssignedToTrue is: 75.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/15/2021 17:51:00'!
test091_PartiallyCoversAnInstanceTemporaryVariableDeclarationThatHasOnlyBeenAssignedToFalse

	self collectCoverageForExampleNamed: #instanceVariableAssignedToFalse.

	self assertNumberOfCoveredRangesFor: #instanceVariableAssignedToFalse is: 2.
	self assert: #instanceVariableAssignedToFalse hasBeenHalfCoveredFrom: 35 to: 50 as: 'instanceVariable'.
	self assert: #instanceVariableAssignedToFalse hasBeenCoveredFrom: 54 to: 58 as: 'false'.
	self assertPercentCoverageForExampleNamed: #instanceVariableAssignedToFalse is: 75.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/15/2021 17:52:23'!
test092_FullyCoversABooleanInstanceVariableDeclarationThatHasBeenAssignedToTrueAndFalse

	self collectCoverageForExampleNamed: #instanceVariableAssignedToTrueAndFalse.

	self assertNumberOfCoveredRangesFor: #instanceVariableAssignedToTrueAndFalse is: 4.
	self assert: #instanceVariableAssignedToTrueAndFalse hasBeenCoveredFrom: 42 to: 57 as: 'instanceVariable'.
	self assert: #instanceVariableAssignedToTrueAndFalse hasBeenCoveredFrom: 61 to: 64 as: 'true'.
	self assert: #instanceVariableAssignedToTrueAndFalse hasBeenCoveredFrom: 68 to: 83 as: 'instanceVariable'.
	self assert: #instanceVariableAssignedToTrueAndFalse hasBeenCoveredFrom: 87 to: 91 as: 'false'.
	self assertPercentCoverageForExampleNamed: #instanceVariableAssignedToTrueAndFalse is: 100.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/15/2021 17:55:19'!
test093_DoesNotCountMultipleAssignmentsWithTheSameValueToBooleanInstanceVariables

	self collectCoverageForExampleNamed: #instanceVariableAssignedToTrueMoreThanOnce.

	self assertNumberOfCoveredRangesFor: #instanceVariableAssignedToTrueMoreThanOnce is: 4.
	self assert: #instanceVariableAssignedToTrueMoreThanOnce hasBeenHalfCoveredFrom: 47 to: 62 as: 'instanceVariable'.
	self assert: #instanceVariableAssignedToTrueMoreThanOnce hasBeenCoveredFrom: 66 to: 69 as: 'true'.
	self assert: #instanceVariableAssignedToTrueMoreThanOnce hasBeenHalfCoveredFrom: 73 to: 88 as: 'instanceVariable'.
	self assert: #instanceVariableAssignedToTrueMoreThanOnce hasBeenCoveredFrom: 92 to: 95 as: 'true'.
	self assertPercentCoverageForExampleNamed: #instanceVariableAssignedToTrueMoreThanOnce is: 75.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/15/2021 17:59:54'!
test094_DoesNotConsiderAnInstanceVariableAsBooleanWhenItIsAssignedToABooleanAndThenToANonBoolean

	self collectCoverageForExampleNamed: #instanceVariableAssignedToABooleanAndThenToANonBoolean.

	self assertNumberOfCoveredRangesFor: #instanceVariableAssignedToABooleanAndThenToANonBoolean is: 4.
	self assert: #instanceVariableAssignedToABooleanAndThenToANonBoolean hasBeenCoveredFrom: 58 to: 73 as: 'instanceVariable'.
	self assert: #instanceVariableAssignedToABooleanAndThenToANonBoolean hasBeenCoveredFrom: 77 to: 80 as: 'true'.
	self assert: #instanceVariableAssignedToABooleanAndThenToANonBoolean hasBeenCoveredFrom: 84 to: 99 as: 'instanceVariable'.
	self assert: #instanceVariableAssignedToABooleanAndThenToANonBoolean hasBeenCoveredFrom: 103 to: 103 as: '1'.
	self assertPercentCoverageForExampleNamed: #instanceVariableAssignedToABooleanAndThenToANonBoolean is: 100.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/15/2021 17:58:21'!
test095_DoesNotConsiderAnInstanceVariableAsBooleanWhenItIsAssignedToANonBooleanAndThenToABoolean

	self collectCoverageForExampleNamed: #instanceVariableAssignedToANonBooleanAndThenToABoolean.
	 
	self assertNumberOfCoveredRangesFor: #instanceVariableAssignedToANonBooleanAndThenToABoolean is: 4.
	self assert: #instanceVariableAssignedToANonBooleanAndThenToABoolean hasBeenCoveredFrom: 58 to: 73 as: 'instanceVariable'.
	self assert: #instanceVariableAssignedToANonBooleanAndThenToABoolean hasBeenCoveredFrom: 77 to: 77 as: '1'.
	self assert: #instanceVariableAssignedToANonBooleanAndThenToABoolean hasBeenCoveredFrom: 81 to: 96 as: 'instanceVariable'.
	self assert: #instanceVariableAssignedToANonBooleanAndThenToABoolean hasBeenCoveredFrom: 100 to: 103 as: 'true'.
	self assertPercentCoverageForExampleNamed: #instanceVariableAssignedToANonBooleanAndThenToABoolean is: 100.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/15/2021 18:33:48'!
test096_DoesNotCoverABooleanInstanceVariableAssignedInDifferentMethods

	self setupCodeCoverageAnalyzerForAll: { self class>>#instanceVariableAssignedToTrue. self class>>#instanceVariableAssignedToFalse }.
	
	self collectCodeCoverageDuring: [
		self
			instanceVariableAssignedToTrue;
			instanceVariableAssignedToFalse ].
	 
	self assertNumberOfCoveredRangesFor: #instanceVariableAssignedToTrue is: 2.
	self assert: #instanceVariableAssignedToTrue hasBeenHalfCoveredFrom: 34 to: 49 as: 'instanceVariable'.
	self assert: #instanceVariableAssignedToTrue hasBeenCoveredFrom: 53 to: 56 as: 'true'.
	self assertPercentCoverageForExampleNamed: #instanceVariableAssignedToTrue is: 75.
	self assertNumberOfCoveredRangesFor: #instanceVariableAssignedToFalse is: 2.
	self assert: #instanceVariableAssignedToFalse hasBeenHalfCoveredFrom: 35 to: 50 as: 'instanceVariable'.
	self assert: #instanceVariableAssignedToFalse hasBeenCoveredFrom: 54 to: 58 as: 'false'.
	self assertPercentCoverageForExampleNamed: #instanceVariableAssignedToFalse is: 75.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/16/2021 20:53:55'!
test097_DoesNotCoverUnusedMethodArguments

	self collectCoverageForExampleNamed: #emptyMethodWithUnusedArgument: with: 1.

	self assert: #emptyMethodWithUnusedArgument: hasNumberOfCoveredRanges: 0 andNumberOfSourceRanges: 1.
	self deny: #emptyMethodWithUnusedArgument: hasBeenCoveredFrom: 32 to: 34 as: 'arg'.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/19/2021 01:42:09'!
test098_PartiallyCoversABooleanClassVariableThatHasOnlyBeenAssignedToTrue

	self collectCoverageForExampleNamed: #classVariableAssignedToTrue.

	self assertNumberOfCoveredRangesFor: #classVariableAssignedToTrue is: 2.
	self assert: #classVariableAssignedToTrue hasBeenHalfCoveredFrom: 31 to: 43 as: 'ClassVariable'.
	self assert: #classVariableAssignedToTrue hasBeenCoveredFrom: 47 to: 50 as: 'true'.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/19/2021 01:42:20'!
test099_PartiallyCoversABooleanClassVariableThatHasOnlyBeenAssignedToFalse

	self collectCoverageForExampleNamed: #classVariableAssignedToFalse.

	self assertNumberOfCoveredRangesFor: #classVariableAssignedToFalse is: 2.
	self assert: #classVariableAssignedToFalse hasBeenHalfCoveredFrom: 32 to: 44 as: 'ClassVariable'.
	self assert: #classVariableAssignedToFalse hasBeenCoveredFrom: 48 to: 52 as: 'false'.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/19/2021 01:42:25'!
test100_FullyCoversABooleanClassVariableThatHasBeenAssignedToTrueAndFalse

	self collectCoverageForExampleNamed: #classVariableAssignedToTrueAndFalse.

	self assertNumberOfCoveredRangesFor: #classVariableAssignedToTrueAndFalse is: 4.
	self assert: #classVariableAssignedToTrueAndFalse hasBeenCoveredFrom: 39 to: 51 as: 'ClassVariable'.
	self assert: #classVariableAssignedToTrueAndFalse hasBeenCoveredFrom: 55 to: 58 as: 'true'.
	self assert: #classVariableAssignedToTrueAndFalse hasBeenCoveredFrom: 62 to: 74 as: 'ClassVariable'.
	self assert: #classVariableAssignedToTrueAndFalse hasBeenCoveredFrom: 78 to: 82 as: 'false'.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/19/2021 01:43:58'!
test101_DoesNotCountMultipleAssignmentsWithTheSameValueToClassTemporaryVariables

	self collectCoverageForExampleNamed: #classVariableAssignedToABooleanMoreThanOnce.

	self assertNumberOfCoveredRangesFor: #classVariableAssignedToABooleanMoreThanOnce is: 4.
	self assert: #classVariableAssignedToABooleanMoreThanOnce hasBeenHalfCoveredFrom: 47 to: 59 as: 'ClassVariable'.
	self assert: #classVariableAssignedToABooleanMoreThanOnce hasBeenCoveredFrom: 63 to: 66 as: 'true'.
	self assert: #classVariableAssignedToABooleanMoreThanOnce hasBeenHalfCoveredFrom: 70 to: 82 as: 'ClassVariable'.
	self assert: #classVariableAssignedToABooleanMoreThanOnce hasBeenCoveredFrom: 86 to: 89 as: 'true'.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/19/2021 01:45:28'!
test102_DoesNotConsiderAClassVariableAsBooleanWhenItIsAssignedToABooleanAndThenToANonBoolean

	self collectCoverageForExampleNamed: #classVariableAssignedToABooleanAndThenToANonBoolean.

	self assertNumberOfCoveredRangesFor: #classVariableAssignedToABooleanAndThenToANonBoolean is: 4.
	self assert: #classVariableAssignedToABooleanAndThenToANonBoolean hasBeenCoveredFrom: 55 to: 67 as: 'ClassVariable'.
	self assert: #classVariableAssignedToABooleanAndThenToANonBoolean hasBeenCoveredFrom: 71 to: 74 as: 'true'.
	self assert: #classVariableAssignedToABooleanAndThenToANonBoolean hasBeenCoveredFrom: 78 to: 90 as: 'ClassVariable'.
	self assert: #classVariableAssignedToABooleanAndThenToANonBoolean hasBeenCoveredFrom: 94 to: 94 as: '1'.! !

!CodeCoverageTest methodsFor: 'tests - boolean coverage' stamp: 'NPM 2/19/2021 01:46:17'!
test103_DoesNotConsiderAClassVariableAsBooleanWhenItIsAssignedToANonBooleanAndThenToABoolean

	self collectCoverageForExampleNamed: #classVariableAssignedToANonBooleanAndThenToABoolean.

	self assertNumberOfCoveredRangesFor: #classVariableAssignedToANonBooleanAndThenToABoolean is: 4.
	self assert: #classVariableAssignedToANonBooleanAndThenToABoolean hasBeenCoveredFrom: 55 to: 67 as: 'ClassVariable'.
	self assert: #classVariableAssignedToANonBooleanAndThenToABoolean hasBeenCoveredFrom: 71 to: 71 as: '1'.
	self assert: #classVariableAssignedToANonBooleanAndThenToABoolean hasBeenCoveredFrom: 75 to: 87 as: 'ClassVariable'.
	self assert: #classVariableAssignedToANonBooleanAndThenToABoolean hasBeenCoveredFrom: 91 to: 94 as: 'true'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test001_1_CoversALiteralVariable

	self collectCoverageForExampleNamed: #literalVariable.
	
	self assertNumberOfCoveredRangesFor: #literalVariable is: 1 .
	self assert: #literalVariable hasBeenCoveredFrom: 20 to: 25 as: 'Object'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test001_2_CoversManyLiteralVariables

	self collectCoverageForExampleNamed: #manyLiteralVariables.
	
	self assertNumberOfCoveredRangesFor: #manyLiteralVariables is: 2 .
	self assert: #manyLiteralVariables hasBeenCoveredFrom: 25 to: 30 as: 'Object'.
	self assert: #manyLiteralVariables hasBeenCoveredFrom: 34 to: 44 as: 'ProtoObject'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test001_3_CoversMultipleOcurrencesOfTheSameLiteralVariable

	self collectCoverageForExampleNamed: #multipleOcurrencesOfTheSameLiteralVariables.
	
	self assertNumberOfCoveredRangesFor: #multipleOcurrencesOfTheSameLiteralVariables is: 2 .
	self assert: #multipleOcurrencesOfTheSameLiteralVariables hasBeenCoveredFrom: 48 to: 53 as: 'Object'.
	self assert: #multipleOcurrencesOfTheSameLiteralVariables hasBeenCoveredFrom: 57 to: 62 as: 'Object'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 01:22:40'!
test001_4_DoesNotCoverLiteralVariablesThatWereNotExecuted

	self collectCoverageForExampleNamed: #notExecutedLiteralVariable.
	
	self assert: #notExecutedLiteralVariable hasNumberOfCoveredRanges: 0 andNumberOfSourceRanges: 1.
	self deny: #notExecutedLiteralVariable hasBeenCoveredFrom: 33 to: 38 as: 'Object'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test002_CoversAnUnaryMessageSend

	self collectCoverageForExampleNamed: #unaryMessageSend.
	
	self assertNumberOfCoveredRangesFor: #unaryMessageSend is: 2 .
	self assert: #unaryMessageSend hasBeenCoveredFrom: 21 to: 26 as: 'Object'.
	self assert: #unaryMessageSend hasBeenCoveredFrom: 28 to: 30 as: 'new'.
	! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 01:57:51'!
test003_DoesNotCoverMessageSendsThatAreNotExecuted

	self collectCoverageForExampleNamed: #notExecutedMessageSend.
	
	self assert: #notExecutedMessageSend hasNumberOfCoveredRanges: 0 andNumberOfSourceRanges: 2.
	self deny: #notExecutedMessageSend hasBeenCoveredFrom: 29 to: 34 as: 'Object'.
	self deny: #notExecutedMessageSend hasBeenCoveredFrom: 36 to: 38 as: 'new'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test004_CoversMultipleOcurrencesOfTheSameMessageSend

	self collectCoverageForExampleNamed: #multipleOcurrencesOfTheSameMessageSend.
	
	self assertNumberOfCoveredRangesFor: #multipleOcurrencesOfTheSameMessageSend is: 4 .
	self assert: #multipleOcurrencesOfTheSameMessageSend hasBeenCoveredFrom: 43 to: 48 as: 'Object'.
	self assert: #multipleOcurrencesOfTheSameMessageSend hasBeenCoveredFrom: 50 to: 52 as: 'new'.
	self assert: #multipleOcurrencesOfTheSameMessageSend hasBeenCoveredFrom: 56 to: 61 as: 'Object'.
	self assert: #multipleOcurrencesOfTheSameMessageSend hasBeenCoveredFrom: 63 to: 65 as: 'new'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test005_CoversABinaryMessageSend

	self collectCoverageForExampleNamed: #binaryMessageSend.
	
	self assertNumberOfCoveredRangesFor: #binaryMessageSend is: 3 .
	self assert: #binaryMessageSend hasBeenCoveredFrom: 22 to: 26 as: 'Array'.
	self assert: #binaryMessageSend hasBeenCoveredFrom: 28 to: 32 as: 'with:'.
	self assert: #binaryMessageSend hasBeenCoveredFrom: 34 to: 39 as: 'Object'.
	! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test006_CoversAKeywordMessageSend

	self collectCoverageForExampleNamed: #keywordMessageSend.
	
	self assertNumberOfCoveredRangesFor: #keywordMessageSend is: 5 .
	self assert: #keywordMessageSend hasBeenCoveredFrom: 23 to: 27 as: 'Array'.
	self assert: #keywordMessageSend hasBeenCoveredFrom: 29 to: 33 as: 'with:'.
	self assert: #keywordMessageSend hasBeenCoveredFrom: 35 to: 40 as: 'Object'.
	self assert: #keywordMessageSend hasBeenCoveredFrom: 42 to: 46 as: 'with:'.
	self assert: #keywordMessageSend hasBeenCoveredFrom: 48 to: 58 as: 'ProtoObject'.
	! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test007_CoversMultipleOcurrencesOfTheReceiverInAMessageSend

	self collectCoverageForExampleNamed: #multipleOcurrencesOfTheReceiverInAMessageSend.
	
	self assertNumberOfCoveredRangesFor: #multipleOcurrencesOfTheReceiverInAMessageSend is: 5 .
	self assert: #multipleOcurrencesOfTheReceiverInAMessageSend hasBeenCoveredFrom: 50 to: 54 as: 'Array'.
	self assert: #multipleOcurrencesOfTheReceiverInAMessageSend hasBeenCoveredFrom: 56 to: 60 as: 'with:'.
	self assert: #multipleOcurrencesOfTheReceiverInAMessageSend hasBeenCoveredFrom: 62 to: 66 as: 'Array'.
	self assert: #multipleOcurrencesOfTheReceiverInAMessageSend hasBeenCoveredFrom: 68 to: 72 as: 'with:'.
	self assert: #multipleOcurrencesOfTheReceiverInAMessageSend hasBeenCoveredFrom: 74 to: 78 as: 'Array'.
	! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test008_CoversMultipleOcurrencesOfAnArgumentInAMessageSend

	self collectCoverageForExampleNamed: #multipleOcurrencesOfAnArgumentInAMessageSend.
	
	self assertNumberOfCoveredRangesFor: #multipleOcurrencesOfAnArgumentInAMessageSend is: 5 .
	self assert: #multipleOcurrencesOfAnArgumentInAMessageSend hasBeenCoveredFrom: 49 to: 53 as: 'Array'.
	self assert: #multipleOcurrencesOfAnArgumentInAMessageSend hasBeenCoveredFrom: 55 to: 59 as: 'with:'.
	self assert: #multipleOcurrencesOfAnArgumentInAMessageSend hasBeenCoveredFrom: 61 to: 66 as: 'Object'.
	self assert: #multipleOcurrencesOfAnArgumentInAMessageSend hasBeenCoveredFrom: 68 to: 72 as: 'with:'.
	self assert: #multipleOcurrencesOfAnArgumentInAMessageSend hasBeenCoveredFrom: 74 to: 79 as: 'Object'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test009_1_CoversALiteral

	self collectCoverageForExampleNamed: #literal.
	
	self assertNumberOfCoveredRangesFor: #literal is: 1 .
	self assert: #literal hasBeenCoveredFrom: 11 to: 12 as: '	1'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test009_2_CoversManyLiterals

	self collectCoverageForExampleNamed: #manyLiterals.
	
	self assertNumberOfCoveredRangesFor: #manyLiterals is: 2 .
	self assert: #manyLiterals hasBeenCoveredFrom: 17 to: 17 as: '1'.
	self assert: #manyLiterals hasBeenCoveredFrom: 21 to: 21 as: '2'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test009_3_CoversMultipleOcurrencesOfTheSameLiteral

	self collectCoverageForExampleNamed: #multipleOcurrencesOfTheSameLiteral.
	
	self assertNumberOfCoveredRangesFor: #multipleOcurrencesOfTheSameLiteral is: 2 .
	self assert: #multipleOcurrencesOfTheSameLiteral hasBeenCoveredFrom: 39 to: 39 as: '1'.
	self assert: #multipleOcurrencesOfTheSameLiteral hasBeenCoveredFrom: 43 to: 43 as: '1'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 01:57:33'!
test009_4_DoesNotCoverLiteralsThatWereNotExecuted

	self collectCoverageForExampleNamed: #notExecutedLiteral.
	
	self assert: #notExecutedLiteral hasNumberOfCoveredRanges: 0 andNumberOfSourceRanges: 1.
	self deny: #notExecutedLiteral hasBeenCoveredFrom: 25 to: 25 as: '1'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test010_1_CoversAnInstanceVariable

	self collectCoverageForExampleNamed: #instanceVariable.
	
	self assertNumberOfCoveredRangesFor: #instanceVariable is: 1 .
	self assert: #instanceVariable hasBeenCoveredFrom: 21 to: 36 as: 'instanceVariable'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test010_2_CoversMultipleInstanceVariables

	self collectCoverageForExampleNamed: #multipleInstanceVariables.
	
	self assertNumberOfCoveredRangesFor: #multipleInstanceVariables is: 2 .
	self assert: #multipleInstanceVariables hasBeenCoveredFrom: 30 to: 45 as: 'instanceVariable'.
	self assert: #multipleInstanceVariables hasBeenCoveredFrom: 49 to: 69 as: 'otherInstanceVariable'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test010_3_CoversMultipleOcurrencesOfTheSameInstanceVariable

	self collectCoverageForExampleNamed: #multipleOcurrencesOfTheSameInstanceVariable.
	
	self assertNumberOfCoveredRangesFor: #multipleOcurrencesOfTheSameInstanceVariable is: 2 .
	self assert: #multipleOcurrencesOfTheSameInstanceVariable hasBeenCoveredFrom: 48 to: 63 as: 'instanceVariable'.
	self assert: #multipleOcurrencesOfTheSameInstanceVariable hasBeenCoveredFrom: 67 to: 82 as: 'instanceVariable'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 01:57:25'!
test010_4_DoesNotCoverInstanceVariablesThatWereNotExecuted

	self collectCoverageForExampleNamed: #notExecutedInstanceVariable.
	
	self assert: #notExecutedInstanceVariable hasNumberOfCoveredRanges: 0 andNumberOfSourceRanges: 1.
	self deny: #notExecutedInstanceVariable hasBeenCoveredFrom: 34 to: 49 as: 'instanceVariable'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 2/16/2021 20:52:27'!
test011_1_DoesNotCoverTemporariesDeclarations

	self collectCoverageForExampleNamed: #unusedTemporaryVariableDeclaration.
	
	self assert: #unusedTemporaryVariableDeclaration hasNumberOfCoveredRanges: 0 andNumberOfSourceRanges: 1.
	self deny: #unusedTemporaryVariableDeclaration hasBeenCoveredFrom: 41 to: 41 as: 'a'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/28/2021 20:51:56'!
test011_2_CoversTemporaryVariablesAndTheirDeclarationsWhenTheTemporaryVariableIsRead

	self collectCoverageForExampleNamed: #temporaryVariable.
	
	self assertNumberOfCoveredRangesFor: #temporaryVariable is: 2.
	self assert: #temporaryVariable hasBeenCoveredFrom: 24 to: 24 as: 'a'.
	self assert: #temporaryVariable hasBeenCoveredFrom: 31 to: 31 as: 'a'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/28/2021 18:57:29'!
test011_3_CoversAManyTemporaryVariables

	self collectCoverageForExampleNamed: #manyTemporaryVariables.
	
	self assertNumberOfCoveredRangesFor: #manyTemporaryVariables is: 4 .
	self assert: #manyTemporaryVariables hasBeenCoveredFrom: 29 to: 29 as: 'a'.
	self assert: #manyTemporaryVariables hasBeenCoveredFrom: 31 to: 31 as: 'b'.
	self assert: #manyTemporaryVariables hasBeenCoveredFrom: 38 to: 38 as: 'a'.
	self assert: #manyTemporaryVariables hasBeenCoveredFrom: 42 to: 42 as: 'b'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/28/2021 18:56:26'!
test011_4_CoversMultipleOccurrencesOfTheSameTemporaryVariable

	self collectCoverageForExampleNamed: #multipleOcurrencesOfTheSameTemporaryVariable.
	
	self assertNumberOfCoveredRangesFor: #multipleOcurrencesOfTheSameTemporaryVariable is: 3 .
	self assert: #multipleOcurrencesOfTheSameTemporaryVariable hasBeenCoveredFrom: 51 to: 51 as: 'a'.
	self assert: #multipleOcurrencesOfTheSameTemporaryVariable hasBeenCoveredFrom: 58 to: 58 as: 'a'.
	self assert: #multipleOcurrencesOfTheSameTemporaryVariable hasBeenCoveredFrom: 62 to: 62 as: 'a'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/28/2021 20:54:11'!
test011_5_DoesNotCoverATemporaryVariableOrItsDeclarationWhenTheTemporaryVariableIsNotReadNorWritten

	self collectCoverageForExampleNamed: #notExecutedTemporaryVariable.
	
	self assert: #notExecutedTemporaryVariable hasNumberOfCoveredRanges: 0 andNumberOfSourceRanges: 2.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test012_1_CoversAVariable

	self collectCoverageForExampleNamed: #variableNode.
	
	self assertNumberOfCoveredRangesFor: #variableNode is: 1 .
	self assert: #variableNode hasBeenCoveredFrom: 17 to: 20 as: 'true'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test012_2_CoversMutipleVariables

	self collectCoverageForExampleNamed: #mutipleVariableNodes.
	
	self assertNumberOfCoveredRangesFor: #mutipleVariableNodes is: 2 .
	self assert: #mutipleVariableNodes hasBeenCoveredFrom: 25 to: 28 as: 'true'.
	self assert: #mutipleVariableNodes hasBeenCoveredFrom: 32 to: 36 as: 'false'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test012_3_CoversMultipleOcurrencesOftheSameVariable

	self collectCoverageForExampleNamed: #multipleOcurrencesOftheSameVariable.
	
	self assertNumberOfCoveredRangesFor: #multipleOcurrencesOftheSameVariable is: 2 .
	self assert: #multipleOcurrencesOftheSameVariable hasBeenCoveredFrom: 40 to: 43 as: 'true'.
	self assert: #multipleOcurrencesOftheSameVariable hasBeenCoveredFrom: 47 to: 50 as: 'true'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 01:57:10'!
test012_4_DoesNotCoverVariablesThatAreNotExecuted

	self collectCoverageForExampleNamed: #notExecutedVariable.
	
	self assert: #notExecutedVariable hasNumberOfCoveredRanges: 0 andNumberOfSourceRanges: 1.
	self deny: #notExecutedVariable hasBeenCoveredFrom: 26 to: 29 as: 'true'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test013_1_DoesNotCoverImplicitSelfReturns

	self collectCoverageForExampleNamed: #implicitSelfReturn.
	
	self assertNumberOfCoveredRangesFor: #implicitSelfReturn is: 0 .! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test013_2_CoversReturnNodes

	self collectCoverageForExampleNamed: #return.
	
	self assertNumberOfCoveredRangesFor: #return is: 1 .
	self assert: #return hasBeenCoveredFrom: 12 to: 13 as: ' 1'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 01:57:03'!
test013_3_DoesNotCoversReturnNodesThatAreNotExecuted

	self collectCoverageForExampleNamed: #notExecutedReturnNode.
	
	self assert: #notExecutedReturnNode hasNumberOfCoveredRanges: 0 andNumberOfSourceRanges: 1.
	self deny: #notExecutedReturnNode hasBeenCoveredFrom: 30 to: 30 as: '1'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 01:56:51'!
test013_4_CoversTheExecutedOcurrenceOfMultipleReturnNodes

	self collectCoverageForExampleNamed: #multipleReturnNodes.
	
	self assert: #multipleReturnNodes hasNumberOfCoveredRanges: 1 andNumberOfSourceRanges: 2.
	self deny: #multipleReturnNodes hasBeenCoveredFrom: 28 to: 28 as: '1'.
	self assert: #multipleReturnNodes hasBeenCoveredFrom: 37 to: 38 as: ' 2'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 01:56:37'!
test013_5_CoversTheExecutedOcurrenceOfTheSameReturnNode

	self collectCoverageForExampleNamed: #multipleOcurrencesOfTheSameReturnNodes.
	
	self assert: #multipleOcurrencesOfTheSameReturnNodes hasNumberOfCoveredRanges: 1 andNumberOfSourceRanges: 2.
	self deny: #multipleOcurrencesOfTheSameReturnNodes hasBeenCoveredFrom: 47 to: 47 as: '1'.
	self assert: #multipleOcurrencesOfTheSameReturnNodes hasBeenCoveredFrom: 56 to: 57 as: ' 1'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test014_1_CoversAnAssignment

	self collectCoverageForExampleNamed: #assignment.
	
	self assertNumberOfCoveredRangesFor: #assignment is: 2 .
	self assert: #assignment hasBeenCoveredFrom: 15 to: 30 as: 'instanceVariable'.
	self assert: #assignment hasBeenCoveredFrom: 34 to: 35 as: ' 1'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test014_2_CoversMultipleAssignments

	self collectCoverageForExampleNamed: #multipleAssignments.
	
	self assertNumberOfCoveredRangesFor: #multipleAssignments is: 4 .
	self assert: #multipleAssignments hasBeenCoveredFrom: 24 to: 39 as: 'instanceVariable'.
	self assert: #multipleAssignments hasBeenCoveredFrom: 44 to: 44 as: '1'.
	self assert: #multipleAssignments hasBeenCoveredFrom: 48 to: 68 as: 'otherInstanceVariable'.
	self assert: #multipleAssignments hasBeenCoveredFrom: 73 to: 73 as: '2'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test014_3_CoversMultipleOcurrencesOfTheSameAssignment

	self collectCoverageForExampleNamed: #multipleOcurrencesOfTheSameAssignment.
	
	self assertNumberOfCoveredRangesFor: #multipleOcurrencesOfTheSameAssignment is: 4 .
	self assert: #multipleOcurrencesOfTheSameAssignment hasBeenCoveredFrom: 42 to: 57 as: 'instanceVariable'.
	self assert: #multipleOcurrencesOfTheSameAssignment hasBeenCoveredFrom: 62 to: 62 as: '1'.
	self assert: #multipleOcurrencesOfTheSameAssignment hasBeenCoveredFrom: 66 to: 81 as: 'instanceVariable'.
	self assert: #multipleOcurrencesOfTheSameAssignment hasBeenCoveredFrom: 86 to: 86 as: '2'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 01:56:28'!
test014_4_DoesNotCoverAssignmentsThatAreNotExecuted

	self collectCoverageForExampleNamed: #notExecutedAssignment.
	
	self assert: #notExecutedAssignment hasNumberOfCoveredRanges: 0 andNumberOfSourceRanges: 2.
	self deny: #notExecutedAssignment hasBeenCoveredFrom: 28 to: 43 as: 'instanceVariable'.
	self deny: #notExecutedAssignment hasBeenCoveredFrom: 48 to: 48 as: '1'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test014_5_CoversTheUsageOfTheVariableThatIsBeingAssigned

	self collectCoverageForExampleNamed: #assignVariableToItself.
	
	self assertNumberOfCoveredRangesFor: #assignVariableToItself is: 2 .
	self assert: #assignVariableToItself hasBeenCoveredFrom: 27 to: 42 as: 'instanceVariable'.
	self assert: #assignVariableToItself hasBeenCoveredFrom: 47 to: 62 as: 'instanceVariable'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test015_1_CoversABacktickNode

	self collectCoverageForExampleNamed: #backtick.
	
	self assertNumberOfCoveredRangesFor: #backtick is: 1 .
	self assert: #backtick hasBeenCoveredFrom: 13 to: 24 as: '`Object new`'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test015_2_CoversMultipleBacktickNodes

	self collectCoverageForExampleNamed: #multipleBacktickNodes.
	
	self assertNumberOfCoveredRangesFor: #multipleBacktickNodes is: 2 .
	self assert: #multipleBacktickNodes hasBeenCoveredFrom: 26 to: 37 as: '`Object new`'.
	self assert: #multipleBacktickNodes hasBeenCoveredFrom: 41 to: 51 as: '`Array new`'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test015_3_CoversMultipleOcurrencesOftheSameBacktickNode

	self collectCoverageForExampleNamed: #multipleOcurrencesOfTheSameBacktickNode.
	
	self assertNumberOfCoveredRangesFor: #multipleOcurrencesOfTheSameBacktickNode is: 2 .
	self assert: #multipleOcurrencesOfTheSameBacktickNode hasBeenCoveredFrom: 44 to: 55 as: '`Object new`'.
	self assert: #multipleOcurrencesOfTheSameBacktickNode hasBeenCoveredFrom: 59 to: 70 as: '`Object new`'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 01:56:22'!
test015_5_DoesNotCoverBackticksNodesThatAreNotExecuted

	self collectCoverageForExampleNamed: #notExecutedBacktickNode.
	
	self assert: #notExecutedBacktickNode hasNumberOfCoveredRanges: 0 andNumberOfSourceRanges: 1.
	self deny: #notExecutedBacktickNode hasBeenCoveredFrom: 30 to: 41 as: '`Object new`'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test016_1_CoversTheEvaluationOfAnEmptyBlock

	self collectCoverageForExampleNamed: #emptyBlock.
	
	self assertNumberOfCoveredRangesFor: #emptyBlock is: 1 .
	self assert: #emptyBlock hasBeenCoveredFrom: 18 to: 22 as: 'value'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test016_2_CoversTheEvaluationOfABlock

	self collectCoverageForExampleNamed: #block.
	
	self assertNumberOfCoveredRangesFor: #block is: 2 .
	self assert: #block hasBeenCoveredFrom: 12 to: 12 as: '1'.
	self assert: #block hasBeenCoveredFrom: 16 to: 20 as: 'value'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test016_3_CoversTheEvaluationOfMultipleBlocks

	self collectCoverageForExampleNamed: #multipleEmptyBlocks.
	
	self assertNumberOfCoveredRangesFor: #multipleEmptyBlocks is: 4 .
	self assert: #multipleEmptyBlocks hasBeenCoveredFrom: 26 to: 26 as: '1'.
	self assert: #multipleEmptyBlocks hasBeenCoveredFrom: 30 to: 34 as: 'value'.
	self assert: #multipleEmptyBlocks hasBeenCoveredFrom: 40 to: 40 as: '2'.
	self assert: #multipleEmptyBlocks hasBeenCoveredFrom: 44 to: 48 as: 'value'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test016_4_CoversMultipleOcurrencesOfTheSameBlockNode

	self collectCoverageForExampleNamed: #multipleOcurrencesOfTheSameBlockNode.
	
	self assertNumberOfCoveredRangesFor: #multipleOcurrencesOfTheSameBlockNode is: 4 .
	self assert: #multipleOcurrencesOfTheSameBlockNode hasBeenCoveredFrom: 43 to: 43 as: '1'.
	self assert: #multipleOcurrencesOfTheSameBlockNode hasBeenCoveredFrom: 47 to: 51 as: 'value'.
	self assert: #multipleOcurrencesOfTheSameBlockNode hasBeenCoveredFrom: 57 to: 57 as: '1'.
	self assert: #multipleOcurrencesOfTheSameBlockNode hasBeenCoveredFrom: 61 to: 65 as: 'value'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 01:56:03'!
test016_5_DoesNotCoverBlockNodesThatAreNotEvaluated

	self collectCoverageForExampleNamed: #notEvaluatedBlockNode.
	
	self assert: #notEvaluatedBlockNode hasNumberOfCoveredRanges: 0 andNumberOfSourceRanges: 1.
	self deny: #notEvaluatedBlockNode hasBeenCoveredFrom: 28 to: 28 as: '1'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/29/2021 02:42:01'!
test016_7_CoversMultipleTemporaryVariablesInABlock

	self collectCoverageForExampleNamed: #blockWithTemporaryVariables.
	
	self assertNumberOfCoveredRangesFor: #blockWithTemporaryVariables is: 7.
	self assert: #blockWithTemporaryVariables hasBeenCoveredFrom: 36 to: 36 as: 'a'.
	self assert: #blockWithTemporaryVariables hasBeenCoveredFrom: 38 to: 38 as: 'b'.
	self assert: #blockWithTemporaryVariables hasBeenCoveredFrom: 44 to: 44 as: 'a'.
	self assert: #blockWithTemporaryVariables hasBeenCoveredFrom: 49 to: 49 as: '1'.
	self assert: #blockWithTemporaryVariables hasBeenCoveredFrom: 54 to: 54 as: 'b'.
	self assert: #blockWithTemporaryVariables hasBeenCoveredFrom: 59 to: 59 as: '2'.
	self assert: #blockWithTemporaryVariables hasBeenCoveredFrom: 63 to: 67 as: 'value'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/29/2021 02:30:25'!
test016_8_CoversBlockArgumentsWhenTheyAreReferenced

	self collectCoverageForExampleNamed: #blockWithArguments.
	
	self assertNumberOfCoveredRangesFor: #blockWithArguments is: 9.
	self assert: #blockWithArguments hasBeenCoveredFrom: 26 to: 26 as: 'a'.
	self assert: #blockWithArguments hasBeenCoveredFrom: 29 to: 29 as: 'b'.
	self assert: #blockWithArguments hasBeenCoveredFrom: 33 to: 33 as: 'a'.
	self assert: #blockWithArguments hasBeenCoveredFrom: 35 to: 35 as: '+'.
	self assert: #blockWithArguments hasBeenCoveredFrom: 37 to: 37 as: 'b'.
	self assert: #blockWithArguments hasBeenCoveredFrom: 41 to: 46 as: 'value:'.
	self assert: #blockWithArguments hasBeenCoveredFrom: 48 to: 48 as: '1'.
	self assert: #blockWithArguments hasBeenCoveredFrom: 50 to: 55 as: 'value:'.
	self assert: #blockWithArguments hasBeenCoveredFrom: 56 to: 57 as: ' 2'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test017_1_CoversABraceNode

	self collectCoverageForExampleNamed: #braceNode.
	
	self assertNumberOfCoveredRangesFor: #braceNode is: 1 .
	self assert: #braceNode hasBeenCoveredFrom: 14 to: 18 as: '{ 1 }'.
	! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test017_2_CoversMultipleBraceNodes

	self collectCoverageForExampleNamed: #multipleBraceNodes.
	
	self assertNumberOfCoveredRangesFor: #multipleBraceNodes is: 2 .
	self assert: #multipleBraceNodes hasBeenCoveredFrom: 23 to: 27 as: '{ 1 }'.
	self assert: #multipleBraceNodes hasBeenCoveredFrom: 31 to: 35 as: '{ 2 }'.
	! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test017_3_CoversMultipleOcurrencesOfTheSameBraceNode

	self collectCoverageForExampleNamed: #multipleOcurrencesOfTheSameBraceNode.
	
	self assertNumberOfCoveredRangesFor: #multipleOcurrencesOfTheSameBraceNode is: 2 .
	self assert: #multipleOcurrencesOfTheSameBraceNode hasBeenCoveredFrom: 41 to: 45 as: '{ 1 }'.
	self assert: #multipleOcurrencesOfTheSameBraceNode hasBeenCoveredFrom: 49 to: 53 as: '{ 1 }'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 01:55:49'!
test017_4_DoesNotCoverBraceNodesThatAreNotExecuted

	self collectCoverageForExampleNamed: #notExecutedBraceNode.
	
	self assert: #notExecutedBraceNode hasNumberOfCoveredRanges: 0 andNumberOfSourceRanges: 1.
	self deny: #notExecutedBraceNode hasBeenCoveredFrom: 27 to: 31 as: '{ 1 }'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test018_1_CoversACascadeMessageSend

	self collectCoverageForExampleNamed: #cascade.
	
	self assertNumberOfCoveredRangesFor: #cascade is: 3 .
	self assert: #cascade hasBeenCoveredFrom: 12 to: 17 as: 'Object'.
	self assert: #cascade hasBeenCoveredFrom: 21 to: 23 as: 'new'.
	self assert: #cascade hasBeenCoveredFrom: 28 to: 32 as: 'value'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test019_CoversCollaborationsWithImplicitSelfReturnsWhenSelfIsReferenced

	self collectCoverageForExampleNamed: #implicitSelfReturnWhenSelfIsReferenced.
	
	self assertNumberOfCoveredRangesFor: #implicitSelfReturnWhenSelfIsReferenced is: 2 .
	self assert: #implicitSelfReturnWhenSelfIsReferenced hasBeenCoveredFrom: 43 to: 46 as: 'self'.
	self assert: #implicitSelfReturnWhenSelfIsReferenced hasBeenCoveredFrom: 48 to: 52 as: 'value'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 01:55:27'!
test020_DoesNotCoverMessageArgumentsThatAreNotExecuted

	self collectCoverageForExampleNamed: #notExecutedMessageArgument.
	
	self assert: #notExecutedMessageArgument hasNumberOfCoveredRanges: 3 andNumberOfSourceRanges: 7.
	self assert: #notExecutedMessageArgument hasBeenCoveredFrom: 31 to: 35 as: 'Array'.
	self assert: #notExecutedMessageArgument hasBeenCoveredFrom: 39 to: 43 as: 'with:'.
	self deny: #notExecutedMessageArgument hasBeenCoveredFrom: 47 to: 50 as: 'self'.
	self deny: #notExecutedMessageArgument hasBeenCoveredFrom: 52 to: 56 as: 'value'.
	self assert: #notExecutedMessageArgument hasBeenCoveredFrom: 62 to: 66 as: 'with:'.
	self deny: #notExecutedMessageArgument hasBeenCoveredFrom: 70 to: 73 as: 'self'.
	self deny: #notExecutedMessageArgument hasBeenCoveredFrom: 75 to: 85 as: 'printString'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/29/2021 02:28:52'!
test021_CoversOptimizedMessages

	self collectCoverageForExampleNamed: #optimizedMessage.
	
	self assertNumberOfCoveredRangesFor: #optimizedMessage is: 7 .
	self assert: #optimizedMessage hasBeenCoveredFrom: 21 to: 21 as: '1'.
	self assert: #optimizedMessage hasBeenCoveredFrom: 23 to: 25 as: 'to:'.
	self assert: #optimizedMessage hasBeenCoveredFrom: 27 to: 28 as: '10'.
	self assert: #optimizedMessage hasBeenCoveredFrom: 30 to: 32 as: 'do:'.
	self assert: #optimizedMessage hasBeenCoveredFrom: 37 to: 42 as: 'number'.
	self assert: #optimizedMessage hasBeenCoveredFrom: 46 to: 51 as: 'number'.
	self assert: #optimizedMessage hasBeenCoveredFrom: 53 to: 57 as: 'value'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test022_CoversTheReceiverOfACascadeNodeWhenItIsAMessageSend

	self collectCoverageForExampleNamed: #cascadeNodeWithMessageSendReceiver.
	
	self assertNumberOfCoveredRangesFor: #cascadeNodeWithMessageSendReceiver is: 4 .
	self assert: #cascadeNodeWithMessageSendReceiver hasBeenCoveredFrom: 38 to: 54 as: 'OrderedCollection'.
	self assert: #cascadeNodeWithMessageSendReceiver hasBeenCoveredFrom: 56 to: 58 as: 'new'.
	self assert: #cascadeNodeWithMessageSendReceiver hasBeenCoveredFrom: 62 to: 67 as: 'add: 1'.
	self assert: #cascadeNodeWithMessageSendReceiver hasBeenCoveredFrom: 72 to: 77 as: 'add: 2'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test023_CoversTheReceiverOfACascadeNodeWhenItIsABlockThatIsEvaluated

	self collectCoverageForExampleNamed: #cascadeNodeWithBlockReceiverThatIsEvaluated.
	
	self assertNumberOfCoveredRangesFor: #cascadeNodeWithBlockReceiverThatIsEvaluated is: 4 .
	self assert: #cascadeNodeWithBlockReceiverThatIsEvaluated hasBeenCoveredFrom: 49 to: 52 as: 'self'.
	self assert: #cascadeNodeWithBlockReceiverThatIsEvaluated hasBeenCoveredFrom: 54 to: 58 as: 'value'.
	self assert: #cascadeNodeWithBlockReceiverThatIsEvaluated hasBeenCoveredFrom: 64 to: 68 as: 'class'.
	self assert: #cascadeNodeWithBlockReceiverThatIsEvaluated hasBeenCoveredFrom: 73 to: 77 as: 'value'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 01:50:13'!
test024_DoesNotCoverTheReceiverOfACascadeNodeWhenItIsABlockThatIsNotExecuted

	self collectCoverageForExampleNamed: #cascadeNodeWithBlockReceiverThatIsNotEvaluated.
	
	self assert: #cascadeNodeWithBlockReceiverThatIsNotEvaluated hasNumberOfCoveredRanges: 2 andNumberOfSourceRanges: 4.
	self assert: #cascadeNodeWithBlockReceiverThatIsNotEvaluated hasBeenCoveredFrom: 67 to: 71 as: 'class'.
	self assert: #cascadeNodeWithBlockReceiverThatIsNotEvaluated hasBeenCoveredFrom: 76 to: 79 as: 'hash'.
	self deny: #cascadeNodeWithBlockReceiverThatIsNotEvaluated hasBeenCoveredFrom: 52 to: 55 as: 'self'.
	self deny: #cascadeNodeWithBlockReceiverThatIsNotEvaluated hasBeenCoveredFrom: 57 to: 61 as: 'value'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test025_CoversTheReceiverOfAMessageSendWhenItIsAMessageSend

	self collectCoverageForExampleNamed: #messageSendWithMessageSendReceiver.
	
	self assertNumberOfCoveredRangesFor: #messageSendWithMessageSendReceiver is: 3 .
	self assert: #messageSendWithMessageSendReceiver hasBeenCoveredFrom: 39 to: 55 as: 'OrderedCollection'.
	self assert: #messageSendWithMessageSendReceiver hasBeenCoveredFrom: 57 to: 59 as: 'new'.
	self assert: #messageSendWithMessageSendReceiver hasBeenCoveredFrom: 64 to: 68 as: 'value'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test026_CoversTheReceiverOfAMessageSendWhenItIsABlockThatIsEvaluated

	self collectCoverageForExampleNamed: #messageSendWithBlockReceiverThatIsEvaluated.
	
	self assertNumberOfCoveredRangesFor: #messageSendWithBlockReceiverThatIsEvaluated is: 3 .
	self assert: #messageSendWithBlockReceiverThatIsEvaluated hasBeenCoveredFrom: 49 to: 54 as: 'Object'.
	self assert: #messageSendWithBlockReceiverThatIsEvaluated hasBeenCoveredFrom: 56 to: 58 as: 'new'.
	self assert: #messageSendWithBlockReceiverThatIsEvaluated hasBeenCoveredFrom: 64 to: 68 as: 'value'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 01:48:12'!
test027_DoesNotCoverTheReceiverOfAMessageSendWhenItIsABlockThatIsNotEvaluated

	self collectCoverageForExampleNamed: #messageSendWithBlockReceiverThatIsNotEvaluated.
	
	self assert: #messageSendWithBlockReceiverThatIsNotEvaluated hasNumberOfCoveredRanges: 1 andNumberOfSourceRanges: 3.
	self assert: #messageSendWithBlockReceiverThatIsNotEvaluated hasBeenCoveredFrom: 67 to: 71 as: 'class'.
	self deny: #messageSendWithBlockReceiverThatIsNotEvaluated hasBeenCoveredFrom: 52 to: 57 as: 'Object'.
	self deny: #messageSendWithBlockReceiverThatIsNotEvaluated hasBeenCoveredFrom: 59 to: 61 as: 'new'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test028_DoesNotCoverSuper

	"TODO: Don't cover the super receiver in message sends for now, as it has to be handled separately. NPM"
	
	self collectCoverageForExampleNamed: #value.
	
	self assertNumberOfCoveredRangesFor: #value is: 1 .
	self assert: #value hasBeenCoveredFrom: 381 to: 385 as: 'value'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/20/2021 02:14:03'!
test037_DoesNotCoverEmptyMethods

	"TODO: do this for now. This case will probably have to be handled separately. NPM"
	
	self collectCoverageForExampleNamed: #emptyMethod.
		
	self assertNumberOfCoveredRangesFor: #emptyMethod is: 0 . ! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/28/2021 17:00:37'!
test046_CoversMessagesThatSignalAnError

	self
		should: [ self collectCoverageForExampleNamed: #raiseError ]
		raise: Error
		withMessageText: self errorMessageForTesting.
		
	self assert: #raiseError hasNumberOfCoveredRanges: 4 andNumberOfSourceRanges: 4 .
	self assert: #raiseError hasBeenCoveredFrom: 14 to: 18 as: 'Error'.
	self assert: #raiseError hasBeenCoveredFrom: 20 to: 26 as: 'signal:'.
	self assert: #raiseError hasBeenCoveredFrom: 28 to: 31 as: 'self'.
	self assert: #raiseError hasBeenCoveredFrom: 33 to: 54 as: 'errorMessageForTesting'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/29/2021 02:07:03'!
test047_CoversSelectorArgumentsWhenTheyAreReferenced

	self setupCodeCoverageAnalyzerForExampleNamed: #messageWithArgument:.
	
	self collectCodeCoverageDuring: [ self messageWithArgument: #foo ].
	
	self assertNumberOfCoveredRangesFor: #messageWithArgument: is: 3 .
	self assert: #messageWithArgument: hasBeenCoveredFrom: 22 to: 31 as: 'anArgument'.
	self assert: #messageWithArgument: hasBeenCoveredFrom: 36 to: 45 as: 'anArgument'.
	self assert: #messageWithArgument: hasBeenCoveredFrom: 47 to: 51 as: 'value'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/28/2021 17:10:13'!
test048_CoversBlocksThatSignalAnError

	self
		should: [ self collectCoverageForExampleNamed: #raiseErrorFromBlock ]
		raise: Error
		withMessageText: self errorMessageForTesting.

	self assert: #raiseErrorFromBlock hasNumberOfCoveredRanges: 5 andNumberOfSourceRanges: 5 .
	self assert: #raiseErrorFromBlock hasBeenCoveredFrom: 25 to: 28 as: 'self'.
	self assert: #raiseErrorFromBlock hasBeenCoveredFrom: 30 to: 35 as: 'error:'.
	self assert: #raiseErrorFromBlock hasBeenCoveredFrom: 37 to: 40 as: 'self'.
	self assert: #raiseErrorFromBlock hasBeenCoveredFrom: 42 to: 63 as: 'errorMessageForTesting'.
	self assert: #raiseErrorFromBlock hasBeenCoveredFrom: 67 to: 71 as: 'value'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/31/2021 21:17:14'!
test049_CoversTemporaryVariablesAndTheirDeclarationsWhenTheTemporaryVariableIsWritten

	self collectCoverageForExampleNamed: #temporaryVariableAssignment.

	self assertNumberOfCoveredRangesFor: #temporaryVariableAssignment is: 3.
	self assert: #temporaryVariableAssignment hasBeenCoveredFrom: 33 to: 33 as: 'a'.
	self assert: #temporaryVariableAssignment hasBeenCoveredFrom: 39 to: 39 as: 'a'.
	self assert: #temporaryVariableAssignment hasBeenCoveredFrom: 43 to: 44 as: ' 1'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/31/2021 21:17:24'!
test050_CoversTemporaryVariablesAndTheirDeclarationsOnlyOnceWhenTheTemporaryVariableIsReadOrWrittenMoreThanOnce

	self collectCoverageForExampleNamed: #temporaryVariableReadAndAssignment.

	self assertNumberOfCoveredRangesFor: #temporaryVariableReadAndAssignment is: 4.
	self assert: #temporaryVariableReadAndAssignment hasBeenCoveredFrom: 40 to: 40 as: 'a'.
	self assert: #temporaryVariableReadAndAssignment hasBeenCoveredFrom: 45 to: 45 as: 'a'.
	self assert: #temporaryVariableReadAndAssignment hasBeenCoveredFrom: 50 to: 50 as: '1'.
	self assert: #temporaryVariableReadAndAssignment hasBeenCoveredFrom: 55 to: 55 as: 'a'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/29/2021 02:17:15'!
test051_DoesNotCoversSelectorArgumentsWhenTheyAreNotReferenced

	self setupCodeCoverageAnalyzerForExampleNamed: #messageWithUnusedArgument:.

	self collectCodeCoverageDuring: [ self messageWithUnusedArgument: #foo ].

	self assert: #messageWithUnusedArgument: hasNumberOfCoveredRanges: 0 andNumberOfSourceRanges: 2.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/29/2021 02:19:48'!
test052_CoversSelectorArgumentsOnlyOnceWhenTheyAreReferencedMultipleTimes

	self setupCodeCoverageAnalyzerForExampleNamed: #messageArgumentUsedManyTimes:.

	self collectCodeCoverageDuring: [ self messageArgumentUsedManyTimes: #foo ].

	self assert: #messageArgumentUsedManyTimes: hasNumberOfCoveredRanges: 3 andNumberOfSourceRanges: 3.
	self assert: #messageArgumentUsedManyTimes: hasBeenCoveredFrom: 31 to: 40 as: 'anArgument'.
	self assert: #messageArgumentUsedManyTimes: hasBeenCoveredFrom: 44 to: 53 as: 'anArgument'.
	self assert: #messageArgumentUsedManyTimes: hasBeenCoveredFrom: 57 to: 66 as: 'anArgument'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 2/16/2021 20:39:38'!
test053_DoesNotCoverBlockArgumentsWhenTheyAreNotReferenced

	self collectCoverageForExampleNamed: #blockWithUnusedArgument.

	self assert: #blockWithUnusedArgument hasNumberOfCoveredRanges: 2 andNumberOfSourceRanges: 3.
	self deny: #blockWithUnusedArgument hasBeenCoveredFrom: 30 to: 30 as: 'a'.
	self assert: #blockWithUnusedArgument hasBeenCoveredFrom: 36 to: 41 as: 'value:'.
	self assert: #blockWithUnusedArgument hasBeenCoveredFrom: 42 to: 43 as: ' 1'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/29/2021 02:33:52'!
test054_CoversBlockArgumentsOnlyOnceWhenTheyAreReferencedMultipleTimes

	self collectCoverageForExampleNamed: #blockWithArgumentUsedManyTimes.

	self assert: #blockWithArgumentUsedManyTimes hasNumberOfCoveredRanges: 6 andNumberOfSourceRanges: 6.
	self assert: #blockWithArgumentUsedManyTimes hasBeenCoveredFrom: 37 to: 44 as: 'argument'.
	self assert: #blockWithArgumentUsedManyTimes hasBeenCoveredFrom: 48 to: 55 as: 'argument'.
	self assert: #blockWithArgumentUsedManyTimes hasBeenCoveredFrom: 57 to: 57 as: '+'.
	self assert: #blockWithArgumentUsedManyTimes hasBeenCoveredFrom: 59 to: 66 as: 'argument'.
	self assert: #blockWithArgumentUsedManyTimes hasBeenCoveredFrom: 70 to: 75 as: 'value:'.
	self assert: #blockWithArgumentUsedManyTimes hasBeenCoveredFrom: 76 to: 77 as: ' 1'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/29/2021 02:39:35'!
test055_CoversBlockTemporaryVariablesAndTheirDeclarationsWhenTheTemporaryVariablesAreRead

	self collectCoverageForExampleNamed: #blockWithReadTemporaryVariable.

	self assertNumberOfCoveredRangesFor: #blockWithReadTemporaryVariable is: 3.
	self assert: #blockWithReadTemporaryVariable hasBeenCoveredFrom: 37 to: 37 as: 'a'.
	self assert: #blockWithReadTemporaryVariable hasBeenCoveredFrom: 40 to: 40 as: 'a'.
	self assert: #blockWithReadTemporaryVariable hasBeenCoveredFrom: 44 to: 48 as: 'value'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/29/2021 02:40:28'!
test056_CoversBlockTemporaryVariablesAndTheirDeclarationsWhenTheTemporaryVariablesAreWritten

	self collectCoverageForExampleNamed: #blockWithWrittenTemporaryVariable.

	self assertNumberOfCoveredRangesFor: #blockWithWrittenTemporaryVariable is: 4.
	self assert: #blockWithWrittenTemporaryVariable hasBeenCoveredFrom: 40 to: 40 as: 'a'.
	self assert: #blockWithWrittenTemporaryVariable hasBeenCoveredFrom: 43 to: 43 as: 'a'.
	self assert: #blockWithWrittenTemporaryVariable hasBeenCoveredFrom: 47 to: 47 as: '1'.
	self assert: #blockWithWrittenTemporaryVariable hasBeenCoveredFrom: 51 to: 55 as: 'value'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 1/29/2021 02:44:07'!
test057_CoversBlockTemporaryVariablesAndTheirDeclarationsOnlyOnceWhenTheTemporaryVariablesAreReferencedMultipleTimes

	self collectCoverageForExampleNamed: #blockWithReadAndWrittenTemporaryVariable.

	self assertNumberOfCoveredRangesFor: #blockWithReadAndWrittenTemporaryVariable is: 5.
	self assert: #blockWithReadAndWrittenTemporaryVariable hasBeenCoveredFrom: 47 to: 47 as: 'a'.
	self assert: #blockWithReadAndWrittenTemporaryVariable hasBeenCoveredFrom: 50 to: 50 as: 'a'.
	self assert: #blockWithReadAndWrittenTemporaryVariable hasBeenCoveredFrom: 55 to: 55 as: '1'.
	self assert: #blockWithReadAndWrittenTemporaryVariable hasBeenCoveredFrom: 58 to: 58 as: 'a'.
	self assert: #blockWithReadAndWrittenTemporaryVariable hasBeenCoveredFrom: 62 to: 66 as: 'value'.! !

!CodeCoverageTest methodsFor: 'tests - parse nodes coverage' stamp: 'NPM 2/1/2021 22:31:32'!
test058_DoesNotCoverMethodsThatWereNotExecuted

	self setupCodeCoverageAnalyzerForExampleNamed: #assignment.
	
	self collectCodeCoverageDuring: [].

	self assert: #assignment hasNumberOfCoveredRanges: 0 andNumberOfSourceRanges: 2.
	self deny: #assignment hasBeenCoveredFrom: 15 to: 30 as: 'instanceVariable'.
	self deny: #assignment hasBeenCoveredFrom: 34 to: 35 as: ' 1'.! !

!CodeCoverageTest methodsFor: 'tests - system category coverage report' stamp: 'NPM 1/20/2021 02:36:10'!
test043_Informs100PercentCoverageWhenAllOfTheAnalizedClassesInASystemCategoryHave100PercentCoverage

	self setupCodeCoverageAnalyzerForAll: {CodeCoverageTestClass1>>#m1}.
	
	self collectCodeCoverageDuring: [ CodeCoverageTestClass1 new m1 ].
		
	self assertCoveragePercentOfSystemCategory: CodeCoverageTestClass1
	       category is: 100! !

!CodeCoverageTest methodsFor: 'tests - system category coverage report' stamp: 'NPM 1/20/2021 02:16:09'!
test044_Informs0PercentCoverageWhenNoneOfTheAnalizedClassesInASystemCategoryHaveBeenCovered

	self setupCodeCoverageAnalyzerForAll: {CodeCoverageTestClass1>>#m1}.
	
	self collectCodeCoverageDuring: [ ].
		
	self
		assertCoveragePercentOfSystemCategory: CodeCoverageTestClass1 category
		is: 0! !

!CodeCoverageTest methodsFor: 'tests - system category coverage report' stamp: 'NPM 1/20/2021 02:16:16'!
test045_InformsThePercentageOfCollaborationsThatWereCoveredInACompiledMethod

	self setupCodeCoverageAnalyzerForAll: {
		CodeCoverageTestClass1>>#m1.
		CodeCoverageTestClass2>>#m2.
		CodeCoverageTestClass2>>#m3 }.
	
	self collectCodeCoverageDuring: [
		CodeCoverageTestClass1 new m1.
		CodeCoverageTestClass2 new m2 ].
		
	self
		assertCoveragePercentOfSystemCategory: CodeCoverageTestClass1 category
		is: 66.67! !

!CompiledMethodCoverageAnalyzerTest methodsFor: 'assertions' stamp: 'NPM 1/10/2021 15:50:57'!
assertRaisesCannotBeCreatedError: aBlock
	
	self
		should: aBlock
		raise: AssertionFailure
		withMessageText: CompiledMethodCoverageAnalyzer shouldOnlyBeCreatedForCompiledMethodsErrorMessage
	! !

!CompiledMethodCoverageAnalyzerTest methodsFor: 'exercising' stamp: 'NPM 1/16/2021 21:23:14'!
createAnalyzerFor: aCompiledMethod

	compiledMethodAnalyzer := CompiledMethodCoverageAnalyzer
		for: aCompiledMethod
		using: fakeCodeCoverageAnalyzer! !

!CompiledMethodCoverageAnalyzerTest methodsFor: 'setUp/tearDown' stamp: 'NPM 1/16/2021 21:26:42'!
setUp

	super setUp.
	
	fakeCodeCoverageAnalyzer := FakeCodeCoverageAnalyzer new.! !

!CompiledMethodCoverageAnalyzerTest methodsFor: 'setUp/tearDown' stamp: 'NPM 1/9/2021 17:17:40'!
tearDown

	super tearDown.
	
	compiledMethodAnalyzer ifNotNil: [ compiledMethodAnalyzer uninstall ]! !

!CompiledMethodCoverageAnalyzerTest methodsFor: 'test objects' stamp: 'NPM 1/10/2021 14:15:22'!
compiledMethodAtM1Selector

	^ self class>>#m1! !

!CompiledMethodCoverageAnalyzerTest methodsFor: 'test objects' stamp: 'NPM 1/10/2021 14:00:26'!
m1

	^ 1! !

!CompiledMethodCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/10/2021 14:15:22'!
test001_ReturnsTheResultOfTheWrappedCompiledMethod
	
	| result |
	self createAnalyzerFor: self compiledMethodAtM1Selector.
	
	result := compiledMethodAnalyzer valueWithReceiver: self arguments: #().
	
	self assert: 1 equals: result.! !

!CompiledMethodCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/20/2021 17:29:09'!
test002_CannotBeCreatedFromMethodReferences
	
	self assertRaisesCannotBeCreatedError: [ self createAnalyzerFor: self compiledMethodAtM1Selector methodReference ].! !

!CompiledMethodCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/10/2021 14:15:22'!
test003_DoesNotReplaceTheWrappedMethodWhenCreated
	
	| originalCompiledMethod |
	originalCompiledMethod := self compiledMethodAtM1Selector.
	
	self createAnalyzerFor: originalCompiledMethod.
	
	self
		assert: originalCompiledMethod
		equals: self compiledMethodAtM1Selector
	! !

!CompiledMethodCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/10/2021 14:15:22'!
test004_ReplacesTheWrappedMethodWhenInstalled
	
	self createAnalyzerFor: self compiledMethodAtM1Selector.

	compiledMethodAnalyzer install.
	
	self
		assert: compiledMethodAnalyzer
		equals: self compiledMethodAtM1Selector
	! !

!CompiledMethodCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/10/2021 15:51:55'!
test005_CannotBeInstalledTwice
	
	self createAnalyzerFor: self compiledMethodAtM1Selector.
	compiledMethodAnalyzer install.
	
	self
		should: [ compiledMethodAnalyzer install ]
		raise: AssertionFailure
		withExceptionDo: [ :error |
			self
				assert: CompiledMethodCoverageAnalyzer shouldOnlyBeInstalledOnceErrorMessage
				equals: error messageText.
			self
				assert: compiledMethodAnalyzer 
				equals: self compiledMethodAtM1Selector ]! !

!CompiledMethodCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/10/2021 14:15:22'!
test006_RestoresTheWrappedMethodWhenUninstalled
	
	| compiledMethod |
	compiledMethod := self compiledMethodAtM1Selector.
	self createAnalyzerFor: compiledMethod.
	compiledMethodAnalyzer install.
	
	compiledMethodAnalyzer uninstall.
	
	self
		assert: compiledMethod
		equals: self compiledMethodAtM1Selector! !

!CompiledMethodCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/16/2021 21:20:52'!
test007_DoesNotAnalyzeTheWrappedMethodWhenCodeCoverageIsDisabled
	
	self createAnalyzerFor: self compiledMethodAtM1Selector.
	compiledMethodAnalyzer install.
	
	compiledMethodAnalyzer run: #m1 with: #() in: self.
	
	self
		assert: 0
		equals: compiledMethodAnalyzer codeCoverageReport percentCovered.! !

!CompiledMethodCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/16/2021 21:24:26'!
test008_AnalizesTheWrappedMethodWhenCodeCoverageIsEnabled
	
	self createAnalyzerFor: self compiledMethodAtM1Selector.
	compiledMethodAnalyzer install.
	fakeCodeCoverageAnalyzer enable.
	
	compiledMethodAnalyzer run: #m1 with: #() in: fakeCodeCoverageAnalyzer .
	
	self
		assert: 100
		equals: compiledMethodAnalyzer codeCoverageReport percentCovered.! !

!CompiledMethodCoverageAnalyzerTest methodsFor: 'tests' stamp: 'NPM 1/10/2021 15:50:57'!
test009_CannotBeCreatedFromMethodsThatAreAlreadyBeingAnalyzed
	
	self createAnalyzerFor: self compiledMethodAtM1Selector.
	
	self assertRaisesCannotBeCreatedError: [ self createAnalyzerFor: compiledMethodAnalyzer ]! !

!CodeCoverageTextStyler methodsFor: 'initialization' stamp: 'NPM 1/18/2021 18:35:36'!
initializeHighlightingCoveredCodeFrom: aCodeCoverageReport 

	codeCoverageReport := aCodeCoverageReport.! !

!CodeCoverageTextStyler methodsFor: 'source ranges consolidation' stamp: 'NPM 1/19/2021 20:38:28'!
canBeConsolidated: sourceCode

	^ sourceCode isEmpty or: [
		(self isAssignmentSymbol: sourceCode) or: [
			self includesOnlyParenthesis: sourceCode ]]! !

!CodeCoverageTextStyler methodsFor: 'source ranges consolidation' stamp: 'NPM 1/19/2021 20:43:22'!
consolidate: currentSourceRange in: consolidatedSourceRanges using: sourceCode 
	
	| previousSourceRange sourceCodeBetweenRanges |
	
	"If there are no consolidated source ranges yet there is nothing left to do"
	consolidatedSourceRanges ifEmpty: [ ^ consolidatedSourceRanges add: currentSourceRange ].
	
	previousSourceRange := consolidatedSourceRanges last.
	
	"Grab the source code between previousSourceRange and currentSourceRange"
	sourceCodeBetweenRanges := sourceCode
		copyFrom: consolidatedSourceRanges last last + 1
		to: currentSourceRange first - 1.

	"I do not consolidate them when the source code between them happens to include a new line character
	because that will generate a single source range spanning two lines, and it does not look good."
	(sourceCodeBetweenRanges includes: Character newLineCharacter)
		ifTrue: [ ^ consolidatedSourceRanges add: currentSourceRange ].
	
	"Do not consolidate source ranges if it cannot be done"
	(self canBeConsolidated: sourceCodeBetweenRanges	 withBlanksTrimmed)
		ifFalse: [ ^ consolidatedSourceRanges add: currentSourceRange ].
		
	"Finally, I create a single source range by merging previousSourceRange and currentSourceRange.
	I remove the last source range instad of sending #remove: with previousSourceRange as it might be duplicated."
	consolidatedSourceRanges
		removeLast;
		add: (previousSourceRange first to: currentSourceRange last).! !

!CodeCoverageTextStyler methodsFor: 'source ranges consolidation' stamp: 'NPM 1/19/2021 20:36:24'!
consolidate: sourceRanges using: sourceCode

	"Try to close the gaps between source ranges in sourceRanges to highlight source code without
	interruptions as much as possible.
	
	TODO(NPM): this is a hack, and it is done here to make highlighted code look better. It can probably be
	solved better when compiled methods are traced."

	^ (sourceRanges asSortedCollection: [ :sourceRange :otherSourceRange |  sourceRange first < otherSourceRange first ])
		inject: OrderedCollection new
		into: [ :consolidatedSourceRanges :sourceRage |
			self consolidate: sourceRage in: consolidatedSourceRanges using: sourceCode.
			consolidatedSourceRanges ]! !

!CodeCoverageTextStyler methodsFor: 'source ranges consolidation' stamp: 'NPM 1/19/2021 20:29:30'!
includesOnlyParenthesis: sourceCode

	^ {$(. $)} includesAllOf: sourceCode! !

!CodeCoverageTextStyler methodsFor: 'source ranges consolidation' stamp: 'NPM 1/19/2021 20:29:20'!
isAssignmentSymbol: sourceCode

	^ sourceCode = ':='! !

!CodeCoverageTextStyler methodsFor: 'style - covered code highlighting' stamp: 'NPM 1/19/2021 20:37:32'!
coveredCodeColor

	^ `Color lightGreen alpha: 0.4`! !

!CodeCoverageTextStyler methodsFor: 'style - covered code highlighting' stamp: 'NPM 2/8/2021 09:47:10'!
halfCoveredCodeColor
	
	^ Color yellow alpha: 0.3! !

!CodeCoverageTextStyler methodsFor: 'style - covered code highlighting' stamp: 'NPM 1/19/2021 20:39:34'!
highlight: sourceRanges with: aColor 
	
	(self consolidate: sourceRanges using: formattedText asString)
		do: [ :sourceRange |
			formattedText
				addAttribute: (TextBackgroundColor color: aColor)
				from: sourceRange first
				to: sourceRange last ]
	! !

!CodeCoverageTextStyler methodsFor: 'style - covered code highlighting' stamp: 'NPM 2/14/2021 13:06:18'!
highlightCodeCoverageResults

	self
		highlight: codeCoverageReport fullyCoveredSourceRanges
		with: self coveredCodeColor.
	
	self
		highlight: codeCoverageReport partiallyCoveredSourceRanges
		with: self halfCoveredCodeColor.
			
	self
		highlight: codeCoverageReport uncoveredSourceRanges
		with: self uncoveredCodeColor.! !

!CodeCoverageTextStyler methodsFor: 'style - covered code highlighting' stamp: 'NPM 1/19/2021 20:44:01'!
uncoveredCodeColor

	^ `Color lightRed alpha: 0.2`! !

!CodeCoverageTextStyler methodsFor: 'private' stamp: 'NPM 1/19/2021 19:56:40'!
privateStyle

	super privateStyle.

	self highlightCodeCoverageResults.
	
	! !

!CodeCoverageTextStyler class methodsFor: 'instance creation' stamp: 'NPM 1/18/2021 18:35:24'!
highlightingCoveredCodeFrom: aCodeCoverageReport
	
	^ self
		new
		initializeHighlightingCoveredCodeFrom: aCodeCoverageReport ! !

!CodeCoverageAnalyzer methodsFor: 'accessing' stamp: 'NPM 1/11/2021 22:11:47'!
classesToAnalyze
	
	^ (compiledMethodsToAnalyze collect: [ :compiledMethod | compiledMethod methodClass ]) asSet! !

!CodeCoverageAnalyzer methodsFor: 'analyzing compiled methods' stamp: 'NPM 1/17/2021 12:01:49'!
installCompiledMethodAnalizers
	
	self triggerEvent: #startInstallingCompiledMethodAnalyzers with: compiledMethodsToAnalyze size.
	
	installedCompiledMethodAnalyzers := compiledMethodsToAnalyze collect: [ :compiledMethodToAnalyze |
		self triggerEvent: #installCompiledMethodAnalyzer with: compiledMethodToAnalyze.
		compiledMethodCoverageAnalyzer installOn: compiledMethodToAnalyze using: self ].
	
	self triggerEvent: #endInstallingCompiledMethodAnalyzers.
	! !

!CodeCoverageAnalyzer methodsFor: 'analyzing compiled methods' stamp: 'NPM 1/11/2021 21:15:02'!
resetInstalledCompiledMethodAnalyzers

	installedCompiledMethodAnalyzers := Set new! !

!CodeCoverageAnalyzer methodsFor: 'analyzing compiled methods' stamp: 'NPM 1/11/2021 21:15:02'!
uninstallCompiledMethodAnalyzers
	
	compiledMethodCoverageAnalyzer uninstallAll: installedCompiledMethodAnalyzers.
	
	self resetInstalledCompiledMethodAnalyzers.! !

!CodeCoverageAnalyzer methodsFor: 'assertions' stamp: 'NPM 1/16/2021 17:44:47'!
assertReportsAreAvailable
	
	self
		assert: running not
		description: self class reportsAreNotAvailableWhileRunningErrorMessage! !

!CodeCoverageAnalyzer methodsFor: 'code coverage report' stamp: 'NPM 1/20/2021 02:43:57'!
generateReport
	
	| compiledMethodReports |
	compiledMethodReports := installedCompiledMethodAnalyzers collect: [ :analyzer | analyzer codeCoverageReport ].
	
	report := CodeCoverageAnalyzerReport withAll: compiledMethodReports.
	! !

!CodeCoverageAnalyzer methodsFor: 'code coverage report' stamp: 'NPM 1/20/2021 02:43:01'!
report
	
	self assertReportsAreAvailable.
	
	^ report! !

!CodeCoverageAnalyzer methodsFor: 'code coverage tracking' stamp: 'NPM 1/16/2021 20:28:26'!
startTrackingCodeCoverage
	
	self ifRunning: [ ^ self ].

	self installCompiledMethodAnalizers.
	
	running := true.! !

!CodeCoverageAnalyzer methodsFor: 'code coverage tracking' stamp: 'NPM 1/20/2021 02:43:47'!
stopTrackingCodeCoverage
	
	self ifRunning: [
		running := false.
		
		[ self generateReport ]
		ensure: [ self uninstallCompiledMethodAnalyzers ]
	]
	
	! !

!CodeCoverageAnalyzer methodsFor: 'evaluating' stamp: 'NPM 1/18/2021 20:00:08'!
value: aBlock
	
	"Convenience method for collecting code coverage for compiledMethodsToAnalyze
	and cleaning up after myself in one-shot."
	
	[
		self startTrackingCodeCoverage.
		^ aBlock value
	] ensure: [
		self stopTrackingCodeCoverage
	]
	! !

!CodeCoverageAnalyzer methodsFor: 'initialization' stamp: 'NPM 1/20/2021 02:42:44'!
initializeToAnalyze: compiledMethods with: aCompiledMethodCoverageAnalyzer  
	
	compiledMethodsToAnalyze := compiledMethods.
	compiledMethodCoverageAnalyzer := aCompiledMethodCoverageAnalyzer.
	running := false.
	report := IdentitySet new.
	
	self resetInstalledCompiledMethodAnalyzers.! !

!CodeCoverageAnalyzer methodsFor: 'testing' stamp: 'NPM 1/10/2021 16:22:58'!
ifRunning: aBlock
	
	running ifTrue: aBlock! !

!CodeCoverageAnalyzer class methodsFor: 'code coverage tracking' stamp: 'NPM 1/11/2021 22:08:50'!
stopTrackingCoverageInAllInstances

	"Stops tracking coverage in all of my instances.
	Useful during development or testing, where an exception can leave dangling instances around.
	
	self stopTrackingCoverageInAllInstances.
	"
	
	self allInstancesDo: [ :codeCoverageAnalyzer | codeCoverageAnalyzer stopTrackingCodeCoverage ]! !

!CodeCoverageAnalyzer class methodsFor: 'error messages' stamp: 'NPM 1/16/2021 17:30:24'!
classWasNotAnalyzedErrorMessage
	
	^ 'Class was not analyzed'! !

!CodeCoverageAnalyzer class methodsFor: 'error messages' stamp: 'NPM 1/9/2021 17:11:16'!
compiledMethodWasNotAnalyzedErrorMessage
	
	^ 'The compiled method was not requested to be analyzed'! !

!CodeCoverageAnalyzer class methodsFor: 'error messages' stamp: 'NPM 1/16/2021 17:42:41'!
reportsAreNotAvailableWhileRunningErrorMessage
	
	^ 'Code coverage reports are not available while code coverage analyzer is running'! !

!CodeCoverageAnalyzer class methodsFor: 'error messages' stamp: 'NPM 1/16/2021 17:36:10'!
systemCategoryWasNotAnalyzedErrorMessage
	
	^ 'The requested system category was not analyzed'! !

!CodeCoverageAnalyzer class methodsFor: 'evaluating' stamp: 'NPM 1/20/2021 03:38:07'!
value: aBlock analyzingAll: compiledMethods 
	
	"Convenience method for analyzing code coverage of compiledMethods
	during the evaluation of aBlock."
	
	| analzer |
	analzer := self toAnalyzeAll: compiledMethods.
	
	analzer value: aBlock.
	
	"Insted of returning aBlock result, I return the instance that its code coverage
	to retrieve coverage reports from it."
	^ analzer report! !

!CodeCoverageAnalyzer class methodsFor: 'instance creation' stamp: 'NPM 1/10/2021 16:11:53'!
toAnalyzeAll: compiledMethods 
	
	^ self
		toAnalyzeAll: compiledMethods
		with: CompiledMethodCoverageAnalyzer! !

!CodeCoverageAnalyzer class methodsFor: 'instance creation' stamp: 'NPM 1/11/2021 22:11:02'!
toAnalyzeAll: compiledMethods with: aCompiledMethodCoverageAnalyzer
	
	^ self
		new
		initializeToAnalyze: compiledMethods
		with: aCompiledMethodCoverageAnalyzer! !

!CodeCoverageAnalyzerReport methodsFor: 'accesing' stamp: 'NPM 1/19/2021 21:16:45'!
mostCoveredCompiledMethodReport
	
	^ summaryReport mostCoveredReport! !

!CodeCoverageAnalyzerReport methodsFor: 'accesing' stamp: 'NPM 1/18/2021 21:04:26'!
reportForClass: aClass

	^ reportsByClass
		at: aClass
		ifAbsent: [ AssertionFailure signal: CodeCoverageAnalyzer classWasNotAnalyzedErrorMessage ]! !

!CodeCoverageAnalyzerReport methodsFor: 'accesing' stamp: 'NPM 1/18/2021 21:17:39'!
reportForCompiledMethod: aCompiledMethod 
	
	^ reportsByCompiledMethod
		at: aCompiledMethod 
		ifAbsent: [ AssertionFailure signal: CodeCoverageAnalyzer compiledMethodWasNotAnalyzedErrorMessage ]! !

!CodeCoverageAnalyzerReport methodsFor: 'accesing' stamp: 'NPM 1/19/2021 21:17:40'!
reportForCompiledMethod: aCompiledMethod ifAnalyzed: foundBlock ifNotAnalyzed: noneBlock

	^ reportsByCompiledMethod
		at: aCompiledMethod
		ifPresent: foundBlock
		ifAbsent: noneBlock! !

!CodeCoverageAnalyzerReport methodsFor: 'accesing' stamp: 'NPM 1/19/2021 21:03:30'!
reportForMessageCategory: aMessageCategory inClass: aClass
	
	^ (reportsByClassAndMessageCategory at: aClass)
		at: aMessageCategory! !

!CodeCoverageAnalyzerReport methodsFor: 'accesing' stamp: 'NPM 1/18/2021 21:03:34'!
reportForSystemCategory: aSystemCategory
	
	^ reportsBySystemCategory
		at: aSystemCategory
		ifAbsent: [ AssertionFailure signal: CodeCoverageAnalyzer systemCategoryWasNotAnalyzedErrorMessage ]! !

!CodeCoverageAnalyzerReport methodsFor: 'indexing' stamp: 'NPM 1/18/2021 21:21:28'!
indexReportsByClassAndMessageCategory: compiledMethodReports

	reportsByClass := Dictionary new.
	reportsByClassAndMessageCategory := Dictionary new.
	
	(compiledMethodReports groupBy: [ :report | report methodClass ]) keysAndValuesDo: [ :class :compiledMethodReportss |
		reportsByClass
			at: class
			put: (CodeCoverageReport toSummarize: compiledMethodReportss).
		
		reportsByClassAndMessageCategory
			at: class
			put: (self indexReportsByMessageCategory: compiledMethodReportss) ]! !

!CodeCoverageAnalyzerReport methodsFor: 'indexing' stamp: 'NPM 1/18/2021 20:40:59'!
indexReportsByCompiledMethod: compiledMethodReports

	reportsByCompiledMethod := compiledMethodReports
		inject: IdentityDictionary new
		into: [ :reportIndex :report | reportIndex at: report compiledMethod put: report; yourself ].! !

!CodeCoverageAnalyzerReport methodsFor: 'indexing' stamp: 'NPM 1/19/2021 21:21:43'!
indexReportsByMessageCategory: compiledMethodReports

	^ (compiledMethodReports groupBy: [ :report | report messageCategory ])
		collect: [ :reports | CodeCoverageReport toSummarize: reports ]
		! !

!CodeCoverageAnalyzerReport methodsFor: 'indexing' stamp: 'NPM 1/18/2021 21:21:48'!
indexReportsBySystemCategory: compiledMethodReports
	
	reportsBySystemCategory := (compiledMethodReports groupBy: [ :report | report systemCategory ])
		collect: [ :reports | CodeCoverageReport toSummarize: reports ]! !

!CodeCoverageAnalyzerReport methodsFor: 'initialization' stamp: 'NPM 1/19/2021 21:16:16'!
initializeWithAll: compiledMethodReports

	summaryReport := CodeCoverageReport toSummarize: compiledMethodReports.
	
	self
		indexReportsByCompiledMethod: compiledMethodReports;
		indexReportsByClassAndMessageCategory: compiledMethodReports;
		indexReportsBySystemCategory: compiledMethodReports! !

!CodeCoverageAnalyzerReport methodsFor: 'statistics' stamp: 'NPM 1/19/2021 21:16:15'!
percentCovered
	
	^ summaryReport percentCovered ! !

!CodeCoverageAnalyzerReport methodsFor: 'testing' stamp: 'NPM 1/18/2021 20:46:52'!
wasClassAnalyzed: aClass 
	
	^ reportsByClass includesKey: aClass! !

!CodeCoverageAnalyzerReport methodsFor: 'testing' stamp: 'NPM 1/18/2021 21:47:02'!
wasClassOrMetaclassAnalyzed: aClassOrMetaclass

	^ (self wasClassAnalyzed: aClassOrMetaclass theNonMetaClass) or: [
		self wasClassAnalyzed: aClassOrMetaclass theMetaClass ]! !

!CodeCoverageAnalyzerReport methodsFor: 'testing' stamp: 'NPM 1/18/2021 20:50:47'!
wasCompiledMethodAnalyzed: aCompiledMethod 
	
	^ reportsByCompiledMethod includesKey: aCompiledMethod! !

!CodeCoverageAnalyzerReport methodsFor: 'testing' stamp: 'NPM 1/18/2021 20:49:48'!
wasMessageCategoryAnalyzed: aMessageCategory in: aClass 
	
	^ reportsByClassAndMessageCategory
		at: aClass
		ifPresent: [ :classReports | classReports includesKey: aMessageCategory ]
		ifAbsent: [ false ]! !

!CodeCoverageAnalyzerReport methodsFor: 'testing' stamp: 'NPM 1/18/2021 20:44:59'!
wasSystemCategoryAnalyzed: aSystemCategory

	^ reportsBySystemCategory includesKey: aSystemCategory! !

!CodeCoverageAnalyzerReport class methodsFor: 'instance creation' stamp: 'NPM 1/18/2021 20:31:24'!
withAll: compiledMethodReports 
	
	^ self
		new
		initializeWithAll: compiledMethodReports! !

!CodeCoverageReport methodsFor: 'statistics' stamp: 'NPM 1/11/2021 18:48:17'!
coverageRatio

	self subclassResponsibility! !

!CodeCoverageReport methodsFor: 'statistics' stamp: 'NPM 2/14/2021 12:35:04'!
percentCovered

	^ (self coverageRatio * 100)
		roundTo: 0.01! !

!CodeCoverageReport class methodsFor: 'instance creation' stamp: 'NPM 2/14/2021 13:38:35'!
for: aCompiledMethod executed: aBoolean with: coverageResults   
	
	^ CompiledMethodCoverageReport
		for: aCompiledMethod
		executed: aBoolean
		with: coverageResults! !

!CodeCoverageReport class methodsFor: 'instance creation' stamp: 'NPM 1/11/2021 18:51:58'!
toSummarize: codeCoverageReports 
	
	^ CodeCoverageReportSummary withAll: codeCoverageReports! !

!CodeCoverageReportSummary methodsFor: 'initialization' stamp: 'NPM 1/11/2021 18:47:03'!
initializeWithAll: codeCoverageReports 

	childReports := codeCoverageReports.! !

!CodeCoverageReportSummary methodsFor: 'querying' stamp: 'NPM 1/19/2021 21:17:08'!
mostCoveredReport
	
	^ childReports detectMax: [ :report | report percentCovered ]! !

!CodeCoverageReportSummary methodsFor: 'statistics' stamp: 'NPM 1/11/2021 18:47:03'!
coverageRatio
	
	childReports ifEmpty: [ ^ 0 ].
	
	^ (childReports sum: [ :coverageReport | coverageReport coverageRatio ]) / childReports size! !

!CodeCoverageReportSummary class methodsFor: 'instance creation' stamp: 'NPM 1/11/2021 18:12:26'!
withAll: anArray 
	
	^ self
		new
		initializeWithAll: anArray ! !

!CompiledMethodCoverageReport methodsFor: 'accessing' stamp: 'NPM 1/17/2021 20:52:31'!
compiledMethod

	^ compiledMethod! !

!CompiledMethodCoverageReport methodsFor: 'accessing' stamp: 'NPM 2/14/2021 13:09:53'!
fullyCoveredSourceRanges

	^ self selectSourceRangesByCoverageRatio: [ :coverageRatio | coverageRatio = 1 ]! !

!CompiledMethodCoverageReport methodsFor: 'accessing' stamp: 'NPM 1/19/2021 21:21:43'!
messageCategory
	
	^ compiledMethod category! !

!CompiledMethodCoverageReport methodsFor: 'accessing' stamp: 'NPM 1/17/2021 18:10:36'!
methodClass
	
	^ compiledMethod methodClass! !

!CompiledMethodCoverageReport methodsFor: 'accessing' stamp: 'NPM 2/14/2021 13:08:38'!
partiallyCoveredSourceRanges
	
	^ self selectSourceRangesByCoverageRatio: [ :coverageRatio |
		0 < coverageRatio and: [ coverageRatio < 1 ]]! !

!CompiledMethodCoverageReport methodsFor: 'accessing' stamp: 'NPM 2/14/2021 13:07:40'!
selectSourceRangesByCoverageRatio: aBlock
	
	^ coverageRatioBySourceRange associations
		select: [ :sourceRangeAndCoverageRatio | aBlock value: sourceRangeAndCoverageRatio value ]
		thenCollect: [ :sourceRangeAndCoverageRatio | sourceRangeAndCoverageRatio key ]! !

!CompiledMethodCoverageReport methodsFor: 'accessing' stamp: 'NPM 1/17/2021 18:10:51'!
selector
	
	^ compiledMethod selector! !

!CompiledMethodCoverageReport methodsFor: 'accessing' stamp: 'NPM 1/19/2021 21:31:23'!
systemCategory
	
	^ compiledMethod
		methodClass
		category ! !

!CompiledMethodCoverageReport methodsFor: 'accessing' stamp: 'NPM 2/14/2021 13:09:46'!
uncoveredSourceRanges
	
	^ self selectSourceRangesByCoverageRatio: [ :coverageRatio | coverageRatio isZero ]! !

!CompiledMethodCoverageReport methodsFor: 'initialization' stamp: 'NPM 2/14/2021 13:41:45'!
initializeFor: aCompiledMethod executed: aBoolean with: coverageResults   

	compiledMethod := aCompiledMethod.
	compiledMethodWasExecuted := aBoolean. 
	coverageRatioBySourceRange := coverageResults! !

!CompiledMethodCoverageReport methodsFor: 'statistics' stamp: 'NPM 2/14/2021 13:14:00'!
coverageRatio
	
	compiledMethodWasExecuted ifFalse: [ ^ 0 ].
	
	coverageRatioBySourceRange ifEmpty: [ ^ 1 ].

	^ (coverageRatioBySourceRange values sum) / coverageRatioBySourceRange size! !

!CompiledMethodCoverageReport methodsFor: 'statistics' stamp: 'NPM 2/14/2021 13:13:23'!
coverageRatioOf: aSourceRange

	^ coverageRatioBySourceRange at: aSourceRange! !

!CompiledMethodCoverageReport methodsFor: 'statistics' stamp: 'NPM 2/14/2021 13:10:50'!
numberOfSourceRanges
	
	^ coverageRatioBySourceRange size! !

!CompiledMethodCoverageReport methodsFor: 'statistics' stamp: 'NPM 2/14/2021 13:05:11'!
totalCoveredSourceRanges
	
	^ coverageRatioBySourceRange size - self uncoveredSourceRanges size! !

!CompiledMethodCoverageReport methodsFor: 'testing' stamp: 'NPM 1/16/2021 20:09:07'!
isFor: aCompiledMethod 
	
	^ compiledMethod == aCompiledMethod ! !

!CompiledMethodCoverageReport class methodsFor: 'instance creation' stamp: 'NPM 2/14/2021 13:39:00'!
for: aCompiledMethod executed: aBoolean with: coverageResults   

	^ self
		new
		initializeFor: aCompiledMethod
		executed: aBoolean
		with: coverageResults
		! !

!CompiledMethodCoverageAnalyzer methodsFor: 'accessing' stamp: 'NPM 1/10/2021 16:24:19'!
currentCompiledMethod

	codeCoverageAnalyzer ifRunning: [
		tracedCompiledMethod ifNil: [ self setUpTracedCompiledMethod ].

		^ tracedCompiledMethod 
	].
	
	^ originalCompiledMethod
	
	! !

!CompiledMethodCoverageAnalyzer methodsFor: 'assertions' stamp: 'NPM 1/10/2021 13:28:31'!
assertIsNotInstalled

	self
		assert: self isInstalled
		description: [ self class shouldOnlyBeInstalledOnceErrorMessage ]! !

!CompiledMethodCoverageAnalyzer methodsFor: 'error handling' stamp: 'NPM 1/10/2021 13:42:27'!
doesNotUnderstand: aMessage
		
	^ aMessage sendTo: self currentCompiledMethod ! !

!CompiledMethodCoverageAnalyzer methodsFor: 'evaluating' stamp: 'NPM 1/10/2021 13:32:10'!
run: aSelector with: arguments in: aReceiver 

	^  self currentCompiledMethod
		valueWithReceiver: aReceiver
		arguments: arguments
		! !

!CompiledMethodCoverageAnalyzer methodsFor: 'initialization' stamp: 'NPM 2/6/2021 17:17:01'!
initializeFor: aCompiledMethod using: aCodeCoverageAnalyzer generatingSourceCodeWith: aCodeCoverageSourceCodeGenerator  

	originalCompiledMethod := aCompiledMethod.
	codeCoverageAnalyzer := aCodeCoverageAnalyzer.
	sourceCodeGenerator := aCodeCoverageSourceCodeGenerator.
	
	"methodClass and selector are cached in instance variables to reduce as much as
	possible the overhead I put on the execution of the traced compiled method."
	methodClass := originalCompiledMethod methodClass.
	selector := originalCompiledMethod selector.
	
	coverageReportBuilder := CompiledMethodCoverageReportBuilder
		for: originalCompiledMethod
		withSourceRanges: sourceCodeGenerator tracedSourceRanges.! !

!CompiledMethodCoverageAnalyzer methodsFor: 'installing & uninstalling' stamp: 'NPM 1/10/2021 13:46:48'!
install
	
	"Replace the original compiled method with myself to intercept its execution".
	
	self assertIsNotInstalled.
	
	self installCompiledMethod: self! !

!CompiledMethodCoverageAnalyzer methodsFor: 'installing & uninstalling' stamp: 'NPM 1/10/2021 13:47:09'!
installCompiledMethod: aCompiledMethod
	
	methodClass
		addSelectorSilently: selector
		withMethod: aCompiledMethod! !

!CompiledMethodCoverageAnalyzer methodsFor: 'installing & uninstalling' stamp: 'NPM 1/10/2021 13:38:22'!
installedCompiledMethod

	^ methodClass compiledMethodAt: selector! !

!CompiledMethodCoverageAnalyzer methodsFor: 'installing & uninstalling' stamp: 'NPM 1/10/2021 13:46:48'!
uninstall
	
	"Restore the original compiled method"
	
	self installCompiledMethod: originalCompiledMethod.
	
	self tearDownTracedCompiledMethod! !

!CompiledMethodCoverageAnalyzer methodsFor: 'reporting code coverage' stamp: 'NPM 2/6/2021 20:06:35'!
codeCoverageReport

	^ coverageReportBuilder value: self compiledMethodWasExecuted! !

!CompiledMethodCoverageAnalyzer methodsFor: 'source code tracing' stamp: 'NPM 2/6/2021 17:05:07'!
setUpTracedCompiledMethod

	"Compilation of the traced version of originalCompiledMethod can fail if the new source code
	is too big to be compiled with optimizations.
	
	At the time of writing this (2021-01-29) trying to analyze the code coverage of ArgentineLaw23555RuleTest>>#testCreation
	(from the Chalten package (https://github.com/Cuis-Smalltalk/Calendars/commits/master/Chalten, at commit 63ac3888936b008e85679cdc474e4cc0685686bf)
	fails with the following compiler error:
	
	    'genJumpLong: distance index -1042 is out of range -1024 to 1023'
	
	To recover from this kind of errors, if compilation of tracedCompiledMethod fails, I give it a second chance and try to compile it wihout optimizations."
	tracedCompiledMethod _  methodClass safelyBasicCompile: sourceCodeGenerator tracedSourceCode.
	
	tracedCompiledMethod codeCoverageAnalyzer: coverageReportBuilder. ! !

!CompiledMethodCoverageAnalyzer methodsFor: 'source code tracing' stamp: 'NPM 1/10/2021 17:55:45'!
tearDownTracedCompiledMethod

	tracedCompiledMethod ifNotNil: [ tracedCompiledMethod removeCodeCoverageAnalyzer. tracedCompiledMethod := nil ]! !

!CompiledMethodCoverageAnalyzer methodsFor: 'testing' stamp: 'NPM 1/16/2021 21:12:35'!
analyzes: aCompiledMethod

	^ originalCompiledMethod == aCompiledMethod ! !

!CompiledMethodCoverageAnalyzer methodsFor: 'testing' stamp: 'NPM 2/2/2021 20:35:26'!
compiledMethodWasExecuted

	^ tracedCompiledMethod isNil not! !

!CompiledMethodCoverageAnalyzer methodsFor: 'testing' stamp: 'NPM 1/10/2021 13:35:33'!
isInstalled

	^ self installedCompiledMethod ~= self! !

!CompiledMethodCoverageAnalyzer class methodsFor: 'instance creation' stamp: 'NPM 2/2/2021 20:43:17'!
for: aCompiledMethod using: aCodeCoverageAnalyzer
	
	"Create an instance of myself to analyze code coverage of aCompiledMethod.
	aTracedSourceCodeGenerator is used to generate the traced version of aCompiledMethod that will report code coverage
	to aCodeCoverageAnalyzer."
	
	"Because I change the method dictionary where aCompiledMethod is installed, I really need to make sure that aCompiledMethod
	is an instance of CompiledMethod and not, say, a MethodReference or even an instance of myself. That could end up leaving
	the class aCompiledMethod is installed in an inconsistent way."
	self assertIsCompiledMethod: aCompiledMethod.
		
	^ self
		new
		initializeFor: aCompiledMethod
		using: aCodeCoverageAnalyzer
		generatingSourceCodeWith: (CodeCoverageSourceCodeGenerator valueFor: aCompiledMethod)! !

!CompiledMethodCoverageAnalyzer class methodsFor: 'installing/uninstalling' stamp: 'NPM 1/10/2021 15:46:35'!
installOn: aCompiledMethod using: aCodeCoverageAnalyzer

	"Convenience method to create an instance of myself and install it in one-shot."
	
	^ (self for: aCompiledMethod using: aCodeCoverageAnalyzer) install! !

!CompiledMethodCoverageAnalyzer class methodsFor: 'installing/uninstalling' stamp: 'NPM 1/10/2021 15:47:12'!
installOnAll: compiledMethodsToAnalyze using: aCodeCoverageAnalyzer
	
	"Convenience method to create an instance of myself for each compiledMethodsToAnalyze and install it them one-shot."
	
	^ compiledMethodsToAnalyze collect: [ :compiledMethodToAnalyze |
		self installOn: compiledMethodToAnalyze using: aCodeCoverageAnalyzer ]! !

!CompiledMethodCoverageAnalyzer class methodsFor: 'installing/uninstalling' stamp: 'NPM 1/10/2021 15:48:44'!
uninstallAll: compiledMethodAnalyzers

	"Convenience method to uninstall all compiledMethodAnalyzers"
	
	compiledMethodAnalyzers do: [ :compiledMethodAnalyzer | compiledMethodAnalyzer uninstall ]
! !

!CompiledMethodCoverageAnalyzer class methodsFor: 'installing/uninstalling' stamp: 'NPM 1/10/2021 15:48:21'!
uninstallAllInstances
	
	"Uninstall all existing instances of myself.
	Useful during development or testing, where an exception can leave dangling instances around.
	
	self uninstallAllInstances.
	"
	
	self uninstallAll: self allInstances! !

!CompiledMethodCoverageAnalyzer class methodsFor: 'assertions' stamp: 'NPM 1/10/2021 15:48:57'!
assertIsCompiledMethod: aCompiledMethod 
	
	self
		assert: aCompiledMethod class isCompiledMethodClass
		description: [ self shouldOnlyBeCreatedForCompiledMethodsErrorMessage ].! !

!CompiledMethodCoverageAnalyzer class methodsFor: 'error messages' stamp: 'NPM 1/9/2021 21:29:18'!
shouldOnlyBeCreatedForCompiledMethodsErrorMessage
	
	^ self name, ' should only be created for compiled methods'.! !

!CompiledMethodCoverageAnalyzer class methodsFor: 'error messages' stamp: 'NPM 1/10/2021 12:42:26'!
shouldOnlyBeInstalledOnceErrorMessage
	
	^ self class name, ' should only be installed once.'! !

!CompiledMethodCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 2/15/2021 17:26:11'!
collectWithUsages: sourceRanges
	
	^ sourceRanges
		inject: Set new
		into: [ :result :sourceRange |
			result
				add: sourceRange;
				addAll: (self usagesOf: sourceRange);
				yourself ]! !

!CompiledMethodCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 2/15/2021 17:24:37'!
coveredSourceRanges
	
	^ self fullyCoveredSourceRanges, self partiallyCoveredBooleanRanges! !

!CompiledMethodCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 2/15/2021 17:26:27'!
fulllyCoveredNonBooleanSourceRanges
	
	^ self collectWithUsages: coveredNonBooleanSourceRanges! !

!CompiledMethodCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 2/15/2021 12:32:12'!
fullyCoveredBooleanSourceRanges
	
	"A fully-covered boolean source range is one that referenced both true and false."
	
	^ self selectBooleanSourceRanges: [ :coveredValues | coveredValues size = 2 ]! !

!CompiledMethodCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 2/15/2021 13:13:10'!
fullyCoveredSourceRanges

	^ self fulllyCoveredNonBooleanSourceRanges, self fullyCoveredBooleanSourceRanges! !

!CompiledMethodCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 2/15/2021 17:23:30'!
partiallyCoveredBooleanRanges
	
	"A partially-covered boolean source range is one that referenced either true or false."
	
	^ self selectBooleanSourceRanges: [ :coveredValues | coveredValues size = 1 ]! !

!CompiledMethodCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 2/15/2021 17:27:43'!
selectBooleanSourceRanges: aCondition
	
	"Select the boolean source range declarations passing the covered boolean values referenced by them to aCondition.
	Return both the declarations that satisfies aCondition and their usages."
	
	| selectedDeclarations |
	selectedDeclarations := booleanValuesByDeclaration associations
		select: [ :sourceRangeAndCoveredValues | aCondition value: sourceRangeAndCoveredValues value ]
		thenCollect: [ :sourceRangeAndCoveredValues | sourceRangeAndCoveredValues key ].
	
	^ self collectWithUsages: selectedDeclarations! !

!CompiledMethodCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 2/15/2021 17:24:12'!
uncoveredSourceRanges

	^ analyzedSourceRanges difference: self coveredSourceRanges! !

!CompiledMethodCoverageReportBuilder methodsFor: 'accessing' stamp: 'NPM 2/14/2021 20:25:52'!
usagesOf: aDeclaration

	^ usagesByDeclaration
		at: aDeclaration
		ifAbsent: [ Set new ]! !

!CompiledMethodCoverageReportBuilder methodsFor: 'evaluating' stamp: 'NPM 2/19/2021 01:32:37'!
value: compiledMethodWasExecuted 

	^ CodeCoverageReport
		for: compiledMethod
		executed: compiledMethodWasExecuted
		with: self consolidateCoverageResults.! !

!CompiledMethodCoverageReportBuilder methodsFor: 'initialization' stamp: 'NPM 2/15/2021 17:13:42'!
initializeFor: aCompiledMethod with: aCollecitonOfAnalizedSourceRanges 

	compiledMethod := aCompiledMethod.
	analyzedSourceRanges := aCollecitonOfAnalizedSourceRanges.
	coveredNonBooleanSourceRanges := Set new.
	booleanValuesByDeclaration := Dictionary new.
	usagesByDeclaration := Dictionary new.! !

!CompiledMethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 2/15/2021 17:20:00'!
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

!CompiledMethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 2/15/2021 17:16:05'!
coverAsNonBoolean: aSourceRange

	"Consider aSourceRange as a covered non-boolean source range.
	A non-boolean source range is one that does not returns, references, or is assignted to neither true nor false."

	"If aSourceRange is already considered as a boolean source range,
	I transform it to non-boolean because now it is related to both boolean and non-boolean objects."
	self transformToNonBoolean: aSourceRange.
		
	coveredNonBooleanSourceRanges add: aSourceRange.! !

!CompiledMethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 2/15/2021 16:19:29'!
coverAsNonBooleanAll: sourceRanges
	
	sourceRanges do: [ :sourceRange | self coverAsNonBoolean: sourceRange ]! !

!CompiledMethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 2/15/2021 17:00:53'!
coverNonBooleanUsage: usageSourceRange of: declarationSourceRange 
	
	"Consider both usageSourceRange and declarationSourceRange as covered.

	This is used, for instance, when a temporary variable is assigned:
	    - the temporary variable in the assignment is found at usageSourceRange.
	    - the temporary variable declaration is found at  declarationSourceRange."

	self
		registerUsage: usageSourceRange of: declarationSourceRange;
		coverAsNonBoolean: declarationSourceRange.! !

!CompiledMethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 2/15/2021 17:22:34'!
registerBoolean: aValue declaredAt: declarationSourceRange

	"Consider declarationSourceRange as a covered boolean source range."

	"If declarationSourceRange is currently considered non-boolean (e.g. it is related to non-boolean objects),
	don't consider it a boolean declaration."
	(coveredNonBooleanSourceRanges includes: declarationSourceRange)
		ifTrue: [ ^ self coverAsNonBoolean: declarationSourceRange ].
		
		
	(booleanValuesByDeclaration at: declarationSourceRange ifAbsentPut: [ Set new ])
		add: aValue! !

!CompiledMethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 2/15/2021 17:08:31'!
registerBoolean: aBoolean declaredAtAll: declarationSourceRanges

	"Consider declarationSourceRanges as covered boolean source ranges.
	
	An example of a boolean having multilple declarations is a keyword message that returned the boolean value:
	
	self foo: 1 bar: 2 baz: 3.
		
	Assuming that #foo:bar:baz: returns a boolean, it is considered to be declared at 3 source ranges: one for each keyword in the selector."

	declarationSourceRanges do: [ :declarationSourceRange |
		self registerBoolean: aBoolean declaredAt: declarationSourceRange ]! !

!CompiledMethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 2/15/2021 17:12:48'!
registerBoolean: aBoolean usedAt: usageSourceRange declaredAt: declarationSourceRange 
	
	self
		registerUsage: usageSourceRange of: declarationSourceRange;
		registerBoolean: aBoolean declaredAt: declarationSourceRange.
	
	
	! !

!CompiledMethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 2/15/2021 16:10:42'!
registerUsage: aSourceRange of: declarationSourceRange

	(usagesByDeclaration at: declarationSourceRange ifAbsentPut: [ Set new ])
		add: aSourceRange! !

!CompiledMethodCoverageReportBuilder methodsFor: 'registering code coverage' stamp: 'NPM 2/15/2021 17:17:06'!
transformToNonBoolean: declarationSourceRange 
	
	"Discard boolean values related to declarationSourceRange"
	booleanValuesByDeclaration
		removeKey: declarationSourceRange
		ifAbsent: [
			"if declarationSourceRange is not a boolean source range, there is nothing left to do."
			^ self ].
	
	"Consider declarationSourceRange covered, as it had at least one boolean value related to it."
	self coverAsNonBoolean: declarationSourceRange.
		
	"Consider all source ranges related to declarationSourceRange covered as well."
	self coverAsNonBooleanAll: (self usagesOf: declarationSourceRange)
	! !

!CompiledMethodCoverageReportBuilder class methodsFor: 'instance creation' stamp: 'NPM 2/6/2021 17:08:05'!
for: aCompiledMethod withSourceRanges: sourceRanges
	
	^ self
		new
		initializeFor: aCompiledMethod
		with: sourceRanges! !

!CodeCoverageTestClass1 methodsFor: 'test objects' stamp: 'NPM 1/16/2021 21:01:44'!
m1

	^ #foo! !

!CodeCoverageTestClass1 methodsFor: 'test objects' stamp: 'NPM 1/11/2021 19:59:27'!
raiseError
	
	self error: 'oops'! !

!CodeCoverageTestClass2 methodsFor: 'test objects' stamp: 'NPM 1/11/2021 19:37:27'!
m2! !

!CodeCoverageTestClass2 methodsFor: 'test objects' stamp: 'NPM 1/11/2021 19:42:59'!
m3! !

!FakeCodeCoverageAnalyzer methodsFor: 'code coverage tracking' stamp: 'NPM 1/10/2021 13:25:35'!
enable
	
	enabled := true! !

!FakeCodeCoverageAnalyzer methodsFor: 'initialization' stamp: 'NPM 1/16/2021 21:26:08'!
initialize

	super initialize.
	
	enabled := false.! !

!FakeCodeCoverageAnalyzer methodsFor: 'testing' stamp: 'NPM 1/10/2021 16:25:26'!
ifRunning: aBlock 
	
	enabled ifTrue: aBlock! !

!CodeCoverageAnalyzerBuilder methodsFor: 'evaluating' stamp: 'NPM 1/18/2021 01:22:46'!
value

	^ CodeCoverageAnalyzer toAnalyzeAll: self compiledMethodsToAnalyze! !

!CodeCoverageAnalyzerBuilder methodsFor: 'initialization' stamp: 'NPM 1/18/2021 01:49:18'!
initializeFrom: aTestSuite querying: aSystemOrganizer  

	testSuite := aTestSuite.
	systemOrganizer := aSystemOrganizer. ! !

!CodeCoverageAnalyzerBuilder methodsFor: 'querying system organization' stamp: 'NPM 1/18/2021 01:46:55'!
classesToAnalyze
	
	^ self targetClasses difference: self testCaseClasses! !

!CodeCoverageAnalyzerBuilder methodsFor: 'querying system organization' stamp: 'NPM 1/29/2021 17:47:03'!
compiledMethodsToAnalyze
	
	"NPM: I use an IdentitySet to hold the compiled methods to analyze because the equality of compiled methods
	returns true for two different instances with the same collaborations."
	
	^ self classesToAnalyze
		inject: IdentitySet new
		into: [ :compiledMethodsToAnalyze :classToAnalyze |
			compiledMethodsToAnalyze
				addAll: classToAnalyze methodDict values;
				addAll: classToAnalyze theMetaClass methodDict values;
				yourself ]! !

!CodeCoverageAnalyzerBuilder methodsFor: 'querying system organization' stamp: 'NPM 1/18/2021 01:54:32'!
rootSystemCategories

	^ (self testSystemCategories collect: [ :systemCategory | self rootSystemCategoryOf: systemCategory ])
		asSet! !

!CodeCoverageAnalyzerBuilder methodsFor: 'querying system organization' stamp: 'NPM 1/18/2021 01:54:54'!
rootSystemCategoryOf: aSystemCategory

	"I consider the root prefix of a system category as the first name before the token, if any.

	For example:

	  * the root system category of Foo is Foo
	  * the root system category of Foo-Bar is Foo
	  * the root system category of Foo-Bar-Baz is Foo."

	^ (aSystemCategory findTokens: $-) first! !

!CodeCoverageAnalyzerBuilder methodsFor: 'querying system organization' stamp: 'NPM 1/29/2021 17:46:34'!
targetClasses
	
	^ self targetSystemCategories
		inject: Set new
		into: [ :targetClasses :systemCategory |
			targetClasses
				addAll: (systemOrganizer classesAt: systemCategory);
				yourself ]! !

!CodeCoverageAnalyzerBuilder methodsFor: 'querying system organization' stamp: 'NPM 1/29/2021 17:45:59'!
targetSystemCategories

	^ self rootSystemCategories
		inject: Set new
		into: [ :targetSystemCategories :systemCategory |
			targetSystemCategories
				addAll: (systemOrganizer categoriesMatching: systemCategory, '*');
				yourself ]! !

!CodeCoverageAnalyzerBuilder methodsFor: 'querying system organization' stamp: 'NPM 1/18/2021 01:28:23'!
testCaseClasses
	
	^ testSuite tests collect: [ :testCase | testCase class ]! !

!CodeCoverageAnalyzerBuilder methodsFor: 'querying system organization' stamp: 'NPM 1/19/2021 21:55:08'!
testSystemCategories
	
	^ (self testCaseClasses collect: [ :testCaseClass | testCaseClass category ])
		asSet! !

!CodeCoverageAnalyzerBuilder class methodsFor: 'evaluating' stamp: 'NPM 1/18/2021 01:44:17'!
valueFrom: aTestSuite 
	
	^ (self from: aTestSuite) value! !

!CodeCoverageAnalyzerBuilder class methodsFor: 'instance creation' stamp: 'NPM 1/18/2021 01:50:00'!
from: aTestSuite 
	
	^ self
		new
		initializeFrom: aTestSuite
		querying: SystemOrganization ! !

!CodeCoverageBrowserMenues class methodsFor: 'browser menues' stamp: 'NPM 1/19/2021 17:22:27'!
classListMenuOptions

	^ `{
		{
			#itemGroup 		-> 		70.
			#itemOrder 		-> 		11.
			#label 			-> 	'run tests with coverage'.
			#object 			-> 	#model.
			#selector 		   -> 		#runClassTestsWithCodeCoverage.
			#icon 			-> 	#weatherFewCloudsIcon
		} asDictionary.
	   }`.
	! !

!CodeCoverageBrowserMenues class methodsFor: 'browser menues' stamp: 'NPM 1/19/2021 17:22:57'!
messageCategoryMenuOptions

	^`{
		{
			#itemGroup 		-> 		40.
			#itemOrder 		-> 		11.
			#label 			-> 	'run tests with coverage'.
			#object 			-> 	#model.
			#selector 		   -> 		#runMessageCategoryTestsWithCodeCoverage.
			#icon 			-> 	#weatherFewCloudsIcon
		} asDictionary.
	   }`.
	! !

!CodeCoverageBrowserMenues class methodsFor: 'browser menues' stamp: 'NPM 1/19/2021 17:38:00'!
messageListMenuOptions

	^ `{
		{
			#itemGroup 		-> 		60.
			#itemOrder 		-> 		21.
			#label 			-> 	'run test with coverage'.
			#object 			-> 	#model.
			#selector 		   -> 		#runMethodTestWithCodeCoverage.
			#icon 			-> 	#weatherFewCloudsIcon
		} asDictionary.
	   }`.
	! !

!CodeCoverageBrowserMenues class methodsFor: 'browser menues' stamp: 'NPM 1/19/2021 17:22:33'!
systemCategoryMenuOptions

	^ `{
		{
			#itemGroup 		-> 		70.
			#itemOrder 		-> 		11.
			#label 			-> 	'run tests with coverage'.
			#object 			-> 	#model.
			#selector 	   	-> 		#runSystemCategoryTestsWithCodeCoverage.
			#icon 			-> 	#weatherFewCloudsIcon
		} asDictionary.
		{
			#itemGroup 		-> 		70.
			#itemOrder 		-> 		12.
			#label 			-> 	'run package tests with coverage'.
			#object 			-> 	#model.
			#selector 	   	-> 		#runPackageTestsWithCodeCoverage.
			#icon 			-> 	#weatherFewCloudsIcon
		} asDictionary.
	   }`.
	! !

!CodeCoverageTextStylerFactory methodsFor: 'initialization' stamp: 'NPM 1/18/2021 17:46:25'!
initializeWith: aCodeCoverageReport 

	report := aCodeCoverageReport.! !

!CodeCoverageTextStylerFactory methodsFor: 'factory methods' stamp: 'NPM 1/18/2021 18:34:38'!
new
	
	^ CodeCoverageTextStyler highlightingCoveredCodeFrom: report! !

!CodeCoverageResultItem methodsFor: 'accessing' stamp: 'NPM 1/17/2021 18:48:02'!
string
	
	^ item string! !

!CodeCoverageResultItem methodsFor: 'initialization' stamp: 'NPM 1/17/2021 21:35:58'!
initializeFor: anItem with: aCodeCoverageReport

	item := anItem.
	report := aCodeCoverageReport! !

!CodeCoverageResultItem methodsFor: 'printing' stamp: 'NPM 1/18/2021 16:46:33'!
displayStringOrText
	
	^ label ifNil: [ self initializeLabel ]! !

!CodeCoverageResultItem methodsFor: 'printing' stamp: 'NPM 1/18/2021 16:47:30'!
initializeLabel

	^ label := ('{1} ({2}%)' format: { item. report percentCovered asFloat printStringFractionDigits: 2 })! !

!CodeCoverageResultItem methodsFor: 'system primitives' stamp: 'NPM 1/17/2021 21:35:34'!
doesNotUnderstand: aMessage

	^ aMessage sendTo: item! !

!CodeCoverageResultItem class methodsFor: 'instance creation' stamp: 'NPM 1/17/2021 21:43:22'!
for: anItem report: aCodeCoverageReport 
	
	^ self
		new
		initializeFor: anItem
		with: aCodeCoverageReport ! !

!ProtoObject methodsFor: '*CodeCoverage' stamp: 'NPM 2/8/2021 09:25:19'!
codeCoverageAnalyzerDo: aBlock 
	
	"Convenience method used by CodeCoverageSourceCodeGenerator to report that
	sourceRanges were covered for the compiled method that sent this message and
	return the object that triggered the code coverage in one-shot.
	
	I assume that the calling method that called me is the one being analyzed."
	
	| compiledMethodBeingAnalyzed codeCoverageAnalyzer |
	
	compiledMethodBeingAnalyzed := thisContext sender sender method.
	codeCoverageAnalyzer := compiledMethodBeingAnalyzed codeCoverageAnalyzer.

	"I have to check that codeCoverageAnalyzer is not null even that is not possible
	(it is either set or not) because when I tried tested code coverage using
	the Live Typing tests, the returned code coverage analyzer was null.
	
	I suspect this is because Live Typing is intercepting bytecode execution and might
	trigger a race condition.
	
	I have to investigate further to either validate or reject this hypotesis.
	For now, as a safety check, I will check this to avoid unwanted errors. NPM"
	codeCoverageAnalyzer ifNil: [ ^ self ].
	
	aBlock value: codeCoverageAnalyzer.
	
	^ self! !

!ProtoObject methodsFor: '*CodeCoverage' stamp: 'NPM 2/15/2021 16:27:39'!
cover: aSourceRange declaredAt: declarationSourceRange 

	^ self codeCoverageAnalyzerDo: [ :analyzer |
		analyzer
			coverNonBooleanUsage: aSourceRange
			of: declarationSourceRange ]! !

!ProtoObject methodsFor: '*CodeCoverage' stamp: 'NPM 2/19/2021 01:32:29'!
coverAll: sourceRanges 

	^ self codeCoverageAnalyzerDo: [ :analyzer |
		analyzer coverAsNonBooleanAll: sourceRanges ]! !

!ProtoObject methodsFor: '*CodeCoverage' stamp: 'NPM 2/15/2021 16:19:29'!
registerCoveringAll: sourceRanges in: aCompiledMethodCoverageReportBuilder 
	
	aCompiledMethodCoverageReportBuilder 
		coverAsNonBooleanAll: sourceRanges.
		
	^ self! !

!Browser methodsFor: '*CodeCoverage' stamp: 'NPM 1/18/2021 01:15:28'!
runClassTestsWithCodeCoverage
	
	self selectedClassName ifNotNil: [ :aClassName | | selectedClass |
		selectedClass _ Smalltalk classNamed: aClassName.
		self runWithCodeCoverage: (TestSuite forClass: selectedClass) ]! !

!Browser methodsFor: '*CodeCoverage' stamp: 'NPM 1/19/2021 17:30:27'!
runMessageCategoryTestsWithCodeCoverage
	
	| testSuite |
	selectedMessageCategory ifNil: [ ^ self ].
	
	testSuite := TestSuite
		forMessageCategoryNamed: selectedMessageCategory
		of: (Smalltalk classNamed: selectedClassName)
		categorizedWith: classOrganizer.
	
	self runWithCodeCoverage: testSuite.! !

!Browser methodsFor: '*CodeCoverage' stamp: 'NPM 1/19/2021 17:38:34'!
runMethodTestWithCodeCoverage
	
	self runWithCodeCoverage: (TestSuite forCompiledMethod: currentCompiledMethod)! !

!Browser methodsFor: '*CodeCoverage' stamp: 'NPM 1/19/2021 17:29:54'!
runPackageTestsWithCodeCoverage
	
	"Run all the tests in the package with code coverage.
	Only the compiled methods that do not belong to a TestCase class will be analyzed."
	
	| package testSuite codeCoverageAnalizer |
	
	selectedSystemCategory ifNil: [ ^ self ].
	
	package := CodePackage
		packageOfSystemCategory: selectedSystemCategory
		ifNone: [ ^ self inform: 'The selected system category does not belong to a package' ].
	
	testSuite := TestSuite forCodePackage: package.
	codeCoverageAnalizer := CodeCoverageAnalyzer
		toAnalyzeAll: package compiledMethodsInNonTestCaseClasses.
	
	ProgressiveCodeCoverageTestRunner
		run: (testSuite)
		analyzingCodeCoverageWith: (codeCoverageAnalizer)! !

!Browser methodsFor: '*CodeCoverage' stamp: 'NPM 1/18/2021 02:25:40'!
runSystemCategoryTestsWithCodeCoverage
	
	self runWithCodeCoverage: (TestSuite forSystemCategoryNamed: selectedSystemCategory using: systemOrganizer)
	! !

!Browser methodsFor: '*CodeCoverage' stamp: 'NPM 1/19/2021 17:18:21'!
runWithCodeCoverage: aTestSuite

	ProgressiveCodeCoverageTestRunner
		run: aTestSuite
		analyzingCodeCoverageWith: (CodeCoverageAnalyzerBuilder valueFrom: aTestSuite)
	! !

!Boolean methodsFor: '*CodeCoverage' stamp: 'NPM 2/15/2021 17:12:35'!
cover: aSourceRange declaredAt: declarationSourceRange 
	
	^ self codeCoverageAnalyzerDo: [ :analyzer | 
		analyzer
			registerBoolean: self
			usedAt: aSourceRange 
			declaredAt: declarationSourceRange ]! !

!Boolean methodsFor: '*CodeCoverage' stamp: 'NPM 2/15/2021 17:05:18'!
registerCoveringAll: sourceRanges in: aCompiledMethodCoverageReportBuilder 
	
	aCompiledMethodCoverageReportBuilder
		registerBoolean: self
		declaredAtAll: sourceRanges.
		
	^ self! !

!Behavior methodsFor: '*CodeCoverage' stamp: 'NPM 1/19/2021 17:33:51'!
basicCompile: code

	"Extracted from #compile:notifying: to compile code without installing the
	compiled method in my method dictionary."
	
	"TODO(NPM): this could be refactored and integrated into cuis core"
	 
	| methodAndNode |
	methodAndNode _ self
		basicCompile: code "a Text"
		notifying: nil
		trailer: self defaultMethodTrailer
		ifFail: [^nil].
		
	methodAndNode method putSource: code fromParseNode: methodAndNode node inFile: 2
			withPreamble: [:f | f newLine; nextPut: $!!; nextChunkPut: 'Behavior method'; newLine].
			
	^ methodAndNode method! !

!Behavior methodsFor: '*CodeCoverage' stamp: 'NPM 1/19/2021 21:58:40'!
isTestCaseClass
	
	^ self isKindOf: TestCase class! !

!Behavior methodsFor: '*CodeCoverage' stamp: 'NPM 2/2/2021 20:14:10'!
safelyBasicCompile: sourceCode 
	
	"I try to compile sourceCode the default way (with compiled optimizations turned in).
	If that fails, I try to compile it without compiler optimizations."
	
	^  [ self basicCompile: sourceCode ]
		on: Error
		do: [ :error | MessageNode disableClassCachedStateDuring: [ self basicCompile: sourceCode ] ].! !

!BlockClosure methodsFor: '*CodeCoverage' stamp: 'NPM 2/15/2021 17:15:36'!
valueCoveringAll: sourceRanges

	self codeCoverageAnalyzerDo: [ :analyzer |
		^ [ self value registerCoveringAll: sourceRanges in: analyzer ]
			ifCurtailed: [ analyzer coverAsNonBooleanAll: sourceRanges ] ]
	
! !

!CompiledMethod methodsFor: '*CodeCoverage' stamp: 'NPM 1/16/2021 21:18:29'!
codeCoverageAnalyzer
	
	^ self propertyValueAt: #codeCoverageAnalyzer! !

!CompiledMethod methodsFor: '*CodeCoverage' stamp: 'NPM 1/16/2021 21:18:49'!
codeCoverageAnalyzer: aCodeCoverageAnalyzer 
	
	self
		assert: self codeCoverageAnalyzer isNil
		description: 'The code coverage for compiled method is already being analyzed'.
	
	self
		propertyValueAt: #codeCoverageAnalyzer
		put: aCodeCoverageAnalyzer! !

!CompiledMethod methodsFor: '*CodeCoverage' stamp: 'NPM 1/10/2021 02:53:58'!
removeCodeCoverageAnalyzer
	
	self removeProperty: #codeCoverageAnalyzer! !

!MethodNode methodsFor: '*CodeCoverage' stamp: 'NPM 12/22/2020 21:09:17'!
rawSourceRangesAndMethodNodeDo: aBinaryBlock

	"Evaluate aBinaryBlock with the methodNode and rawSourceRanges generated from the receiver.
	
	This method is similar to #rawSourceRangesAndMethodDo: except that it:
	* provides the MethodNode instead of the CompiledMethod
	* ensures that the same parse nodes instances are used for both the raw source ranges keys and the method node children.
	
	If #rawSourceRangesAndMethodDo: was used instead, the method node will have to be recreated from the returned compiled method and that will cause
	its parse nodes to be different objects (have different identity) that the ones used for the raw souce ranges keys."
	
	| methodNode |
	methodNode := encoder classEncoding parserClass new
					encoderClass: encoder class;
					parse: (sourceText "If no source, use decompile string as source to map from"
							ifNil: [self decompileString]
							ifNotNil: [sourceText])
					class: self methodClass.

	^ aBinaryBlock
		value: methodNode encoder rawSourceRanges
		value: methodNode! !

!MethodNode methodsFor: '*CodeCoverage' stamp: 'NPM 12/20/2020 13:05:48'!
unoptimizedMethodNodeAndRawSourceRangesDo: aBlock
	
	^ MessageNode disableClassCachedStateDuring: [ self rawSourceRangesAndMethodNodeDo: aBlock ]! !

!MessageNode class methodsFor: '*CodeCoverage' stamp: 'NPM 12/20/2020 01:31:17'!
disableClassCache
	
	MacroSelectors _ #().
	MacroTransformers _ #().
	MacroEmitters _ #().
	MacroSizers _ #().
	MacroPrinters _ #().! !

!MessageNode class methodsFor: '*CodeCoverage' stamp: 'NPM 12/22/2020 21:10:15'!
disableClassCachedStateDuring: aBlockClosure 
	
	[
		self disableClassCache.
		^ aBlockClosure value
	] ensure: [ self initialize ]
	! !

!CodePackage methodsFor: '*CodeCoverage' stamp: 'NPM 1/19/2021 17:13:44'!
compiledMethodsInNonTestCaseClasses
	
	^ self methods
		select: [ :method | method methodClass isTestCaseClass not ]
		thenCollect: [ :method | method compiledMethod ]! !

!CodePackage methodsFor: '*CodeCoverage' stamp: 'NPM 1/18/2021 21:53:39'!
testCaseClasses
	
	| classes |
	classes := Set new.

	self classesDo: [ :class | 
		class isTestCaseClass ifTrue: [ classes add: class ]].
	
	^ classes! !

!TestSuite class methodsFor: '*CodeCoverage' stamp: 'NPM 1/18/2021 21:51:18'!
forCodePackage: aCodePackage 
	
	^ self
		forClasses: aCodePackage testCaseClasses
		named: aCodePackage packageName, ' tests'.! !
