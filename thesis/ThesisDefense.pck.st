'From Cuis7.9 [latest update: #8149] on 6 September 2026 at 12:55:51 pm'!
'Description '!
!provides: 'ThesisDefense' 1 26!
!requires: 'Cuis-Base' nil nil nil!
!requires: 'CodeCoverage' nil nil nil!
!requires: 'CodeCoverageDemo' nil nil nil!
SystemOrganization addCategory: #ThesisDefense!


!classDefinition: #ThesisDefenseButtonMorph category: #ThesisDefense!
PluggableButtonMorph subclass: #ThesisDefenseButtonMorph
	instanceVariableNames: 'labelColor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'ThesisDefenseButtonMorph class' category: #ThesisDefense!
ThesisDefenseButtonMorph class
	instanceVariableNames: ''!

!classDefinition: #SlidesPresenter category: #ThesisDefense!
ColoredBoxMorph subclass: #SlidesPresenter
	instanceVariableNames: 'slides index currentSlide'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'SlidesPresenter class' category: #ThesisDefense!
SlidesPresenter class
	instanceVariableNames: ''!

!classDefinition: #MethodSlideBuilder category: #ThesisDefense!
Object subclass: #MethodSlideBuilder
	instanceVariableNames: 'library methodClass selector heading'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'MethodSlideBuilder class' category: #ThesisDefense!
MethodSlideBuilder class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageMethodSlideBuilder category: #ThesisDefense!
MethodSlideBuilder subclass: #CodeCoverageMethodSlideBuilder
	instanceVariableNames: 'executionBlock runButton coverageBadge slide codeEditorMorph reportBuilderFactory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'CodeCoverageMethodSlideBuilder class' category: #ThesisDefense!
CodeCoverageMethodSlideBuilder class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageTestCaseSlideBuilder category: #ThesisDefense!
CodeCoverageMethodSlideBuilder subclass: #CodeCoverageTestCaseSlideBuilder
	instanceVariableNames: 'argumentNames argumentValues argumentToggles testCases testCaseChips chipsRowTop addButton emptyStateLabel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'CodeCoverageTestCaseSlideBuilder class' category: #ThesisDefense!
CodeCoverageTestCaseSlideBuilder class
	instanceVariableNames: ''!

!classDefinition: #SlideStyle category: #ThesisDefense!
Object subclass: #SlideStyle
	instanceVariableNames: ''
	classVariableNames: 'ColorPalette'
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'SlideStyle class' category: #ThesisDefense!
SlideStyle class
	instanceVariableNames: ''!

!classDefinition: #ThesisDefenseMorphLibrary category: #ThesisDefense!
Object subclass: #ThesisDefenseMorphLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'ThesisDefenseMorphLibrary class' category: #ThesisDefense!
ThesisDefenseMorphLibrary class
	instanceVariableNames: ''!

!classDefinition: #ThesisDefensePresentation category: #ThesisDefense!
Object subclass: #ThesisDefensePresentation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'ThesisDefensePresentation class' category: #ThesisDefense!
ThesisDefensePresentation class
	instanceVariableNames: ''!

!classDefinition: #TitleSlideBuilder category: #ThesisDefense!
Object subclass: #TitleSlideBuilder
	instanceVariableNames: 'library'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'TitleSlideBuilder class' category: #ThesisDefense!
TitleSlideBuilder class
	instanceVariableNames: ''!


!SlidesPresenter commentStamp: '<historical>' prior: 0!
A fullscreen ColoredBoxMorph that presents a collection of slides, one at a time: it IS the backdrop (sized to Display extent, colored to match the current slide's own background), with the current slide as its one submorph.

Because SlidesPresenter is an ordinary ColoredBoxMorph (not a PasteUpMorph/World), it answers false to allowsSubmorphDrag by default - so the current slide, being its child, can never be grabbed and dragged on its own. SlidesPresenter itself sits directly in the World, so it IS draggable, revealing Cuis underneath (the intended effect).

Right/left arrow keys move to the next/previous slide; they do nothing at either end of the collection.

Structure:
 slides -- an OrderedCollection of slide morphs (e.g. built by TitleSlideBuilder), in presentation order
 index -- 1-based position of the currently shown slide within slides
 currentSlide -- the slide morph currently being shown (slides at: index)!

!SlideStyle commentStamp: '<historical>' prior: 0!
Design tokens for the thesis defense slides: dark palette and 8px-grid spacing.

Fonts (family, sizes, weights) live on ThesisDefenseMorphLibrary, which already resolved the Comfortaa/emphasized: selectors for this image.!

!ThesisDefenseButtonMorph methodsFor: 'initialization' stamp: 'NPM 5/Sep/2026, 7:52:23 pm (UTC)'!
initialize

	super initialize.
	self buttonStyle: #round.
	labelColor := nil! !

!ThesisDefenseButtonMorph methodsFor: 'accessing' stamp: 'NPM 5/Sep/2026, 7:52:23 pm (UTC)'!
labelColor: aColor

	labelColor := aColor! !

!ThesisDefenseButtonMorph methodsFor: 'geometry' stamp: 'NPM 5/Sep/2026, 7:52:24 pm (UTC)'!
minimumExtent

	^ 16 @ 16! !

!ThesisDefenseButtonMorph methodsFor: 'drawing' stamp: 'NPM 5/Sep/2026, 7:52:30 pm (UTC)'!
drawRegularLabelOn: aCanvas

	| w f center x y availableW l labelMargin |
	f := self fontToUse.
	center := extent // 2.

	label ifNotNil: [
		labelMargin := 4.
		w := f widthOfString: label.
		availableW := extent x - labelMargin - labelMargin - 1.
		availableW >= w
			ifTrue: [ x := center x - (w // 2). l := label ]
			ifFalse: [ x := labelMargin. l := label squeezedTo: (label size * availableW / w) rounded ].
		y := center y - (f lineSpacing // 2).
		self isPressed ifTrue: [ x := x + 1. y := y + 1 ].
		aCanvas
			drawString: l
			at: x @ y
			font: f
			color: (self enableColorWith: (labelColor ifNil: [ SlideStyle textPrimary ])) ]! !

!ThesisDefenseButtonMorph methodsFor: 'drawing' stamp: 'NPM 5/Sep/2026, 7:52:27 pm (UTC)'!
drawRoundLookOn: aCanvas

	| r colorForButton rect |
	colorForButton := self isPressed
		ifFalse: [
			self mouseIsOver
				ifTrue: [ mouseOverColor ifNil: [ Color h: color hue s: color saturation * 1.2 v: color brightness * 0.92 alpha: color alpha ] ]
				ifFalse: [ color ] ]
		ifTrue: [ mouseOverColor ifNil: [ color adjustSaturation: 0.1 brightness: -0.15 ] ].

	rect := self roundButtonRect.
	r := rect height / 2.
	aCanvas roundRect: rect color: (self enableColorWith: colorForButton) radius: r.

	self drawRegularLabelOn: aCanvas! !

!SlidesPresenter methodsFor: 'accessing' stamp: 'NPM 5/Sep/2026, 6:10:04 pm (UTC)'!
currentSlide

	^ currentSlide! !

!SlidesPresenter methodsFor: 'accessing' stamp: 'NPM 5/Sep/2026, 6:10:04 pm (UTC)'!
currentSlide: aSlideMorph

	currentSlide ifNotNil: [ self removeMorph: currentSlide ].
	currentSlide := aSlideMorph.
	self color: currentSlide color.
	self morphExtent: Display extent.
	self addMorph: currentSlide.
	currentSlide scaleToFitInto: (0 @ 0 extent: Display extent)! !

!SlidesPresenter methodsFor: 'accessing' stamp: 'NPM 5/Sep/2026, 6:14:45 pm (UTC)'!
slides: aCollectionOfSlides

	slides := aCollectionOfSlides asOrderedCollection.
	self showSlideAt: 1! !

!SlidesPresenter methodsFor: 'presenting' stamp: 'NPM 5/Sep/2026, 6:10:06 pm (UTC)'!
close

	self delete! !

!SlidesPresenter methodsFor: 'presenting' stamp: 'NPM 5/Sep/2026, 6:15:19 pm (UTC)'!
present

	self morphPosition: 0 @ 0.
	self openInWorld.
	self world ifNotNil: [ :w | w activeHand newKeyboardFocus: self ].
	^ self! !

!SlidesPresenter methodsFor: 'navigating' stamp: 'NPM 5/Sep/2026, 6:14:47 pm (UTC)'!
next

	index >= slides size ifTrue: [ ^ self ].
	self showSlideAt: index + 1! !

!SlidesPresenter methodsFor: 'navigating' stamp: 'NPM 5/Sep/2026, 6:14:48 pm (UTC)'!
previous

	index <= 1 ifTrue: [ ^ self ].
	self showSlideAt: index - 1! !

!SlidesPresenter methodsFor: 'navigating' stamp: 'NPM 5/Sep/2026, 6:14:46 pm (UTC)'!
showSlideAt: anIndex

	index := anIndex.
	self currentSlide: (slides at: index)! !

!SlidesPresenter methodsFor: 'keyboard' stamp: 'NPM 6/Sep/2026, 3:55:20 pm (UTC)'!
doubleClick: aMouseEvent localPosition: localEventPosition

	self rotation: 0 scale: 1.
	self morphPosition: 0 @ 0.
	self currentSlide: currentSlide! !

!SlidesPresenter methodsFor: 'keyboard' stamp: 'NPM 5/Sep/2026, 6:14:49 pm (UTC)'!
handlesKeyboardFocus

	^ true! !

!SlidesPresenter methodsFor: 'keyboard' stamp: 'NPM 6/Sep/2026, 3:51:54 pm (UTC)'!
handlesMouseDown: aMouseButtonEvent

	^ true! !

!SlidesPresenter methodsFor: 'keyboard' stamp: 'NPM 5/Sep/2026, 7:33:05 pm (UTC)'!
keyStroke: aKeyboardEvent

	super keyStroke: aKeyboardEvent.
	aKeyboardEvent wasHandled ifTrue: [ ^ self ].

	aKeyboardEvent isArrowRight ifTrue: [
		self next.
		aKeyboardEvent wasHandled: true.
		^ self ].

	aKeyboardEvent isArrowLeft ifTrue: [
		self previous.
		aKeyboardEvent wasHandled: true.
		^ self ].

	aKeyboardEvent isEsc ifTrue: [
		aKeyboardEvent wasHandled: true.
		self close.
		^ self ]! !

!SlidesPresenter methodsFor: 'keyboard' stamp: 'NPM 6/Sep/2026, 3:51:56 pm (UTC)'!
mouseButton1Down: aMouseEvent localPosition: localEventPosition

	aMouseEvent hand
		waitForClicksOrDragOrSimulatedMouseButton2: self
		event: aMouseEvent
		clkSel: nil
		clkNHalf: nil
		dblClkSel: #doubleClick:localPosition:
		dblClkNHalfSel: nil
		tripleClkSel: nil
		dragSel: #dragEvent:localPosition:! !

!SlidesPresenter class methodsFor: 'instance creation' stamp: 'NPM 5/Sep/2026, 6:14:45 pm (UTC)'!
on: aCollectionOfSlides

	^ self new
		slides: aCollectionOfSlides;
		yourself! !

!SlidesPresenter class methodsFor: 'presenting' stamp: 'NPM 5/Sep/2026, 6:48:28 pm (UTC)'!
present: aCollectionOfSlides

	(self on: aCollectionOfSlides) present! !

!MethodSlideBuilder methodsFor: 'building' stamp: 'NPM 6/Sep/2026, 12:54:55 am (UTC)'!
codeEditor

	| browser |

	browser := Browser new.
	browser setSelectedSystemCategory: methodClass category.
	browser selectClass: methodClass.
	browser selectedMessageName: selector.

	^ library codeEditorOn: browser! !

!MethodSlideBuilder methodsFor: 'building' stamp: 'NPM 5/Sep/2026, 6:52:13 pm (UTC)'!
heading: aString

	heading := aString.! !

!MethodSlideBuilder methodsFor: 'building' stamp: 'NPM 5/Sep/2026, 6:44:32 pm (UTC)'!
initialize

	super initialize.

	library := ThesisDefenseMorphLibrary new.! !

!MethodSlideBuilder methodsFor: 'building' stamp: 'NPM 5/Sep/2026, 6:44:33 pm (UTC)'!
setClass: aClass selector: aSymbol

	methodClass := aClass.
	selector := aSymbol.! !

!MethodSlideBuilder methodsFor: 'building' stamp: 'NPM 6/Sep/2026, 2:56:03 am (UTC)'!
value

	| slide editor top left bottom |

	slide := library blankSlide.
	left := slide interiorOrigin x.
	top := slide interiorOrigin y.
	bottom := top + slide interiorExtent y.

	heading ifNotNil: [
		| headingLabel |
		headingLabel := library primaryHeading: heading.
		headingLabel morphPosition: left @ top.
		slide addMorph: headingLabel.
		top := top + headingLabel morphHeight + (SlideStyle space: 3) ].

	editor := self codeEditor.
	editor morphExtent: slide interiorExtent x @ (bottom - top).
	editor morphPosition: left @ top.
	slide addMorph: editor.

	^ slide! !

!MethodSlideBuilder class methodsFor: 'instance creation' stamp: 'NPM 5/Sep/2026, 6:44:37 pm (UTC)'!
on: aClass selector: aSymbol

	^ self new
		setClass: aClass selector: aSymbol;
		yourself! !

!MethodSlideBuilder class methodsFor: 'instance creation' stamp: 'NPM 5/Sep/2026, 6:52:13 pm (UTC)'!
on: aClass selector: aSymbol heading: aString

	^ self new
		setClass: aClass selector: aSymbol;
		heading: aString;
		yourself! !

!CodeCoverageMethodSlideBuilder methodsFor: 'building' stamp: 'NPM 5/Sep/2026, 7:27:30 pm (UTC)'!
creatingReportBuildersWith: aReportBuilderFactory

	reportBuilderFactory := aReportBuilderFactory! !

!CodeCoverageMethodSlideBuilder methodsFor: 'building' stamp: 'NPM 5/Sep/2026, 7:17:21 pm (UTC)'!
executing: aBlock

	executionBlock := aBlock! !

!CodeCoverageMethodSlideBuilder methodsFor: 'building' stamp: 'NPM 5/Sep/2026, 7:27:30 pm (UTC)'!
initialize

	super initialize.

	reportBuilderFactory := DecisionConditionCoverageReportBuilder! !

!CodeCoverageMethodSlideBuilder methodsFor: 'building' stamp: 'NPM 6/Sep/2026, 2:56:07 am (UTC)'!
value

	| top rowHeight headingLabel left right bottom |

	slide := library blankSlide.
	left := slide interiorOrigin x.
	top := slide interiorOrigin y.
	right := left + slide interiorExtent x.
	bottom := top + slide interiorExtent y.

	heading ifNotNil: [
		headingLabel := library primaryHeading: heading ].

	runButton := library
		pillButtonLabeled: 'Run Coverage'
		target: self
		action: #runCoverage
		actionArgument: nil
		color: SlideStyle accent
		labelColor: SlideStyle background.

	rowHeight := (headingLabel ifNil: [ 0 ] ifNotNil: [ headingLabel morphHeight ]) max: runButton morphHeight.

	headingLabel ifNotNil: [
		headingLabel morphPosition: left @ (top + ((rowHeight - headingLabel morphHeight) // 2)).
		slide addMorph: headingLabel ].

	runButton morphPosition: (right - runButton morphWidth) @ (top + ((rowHeight - runButton morphHeight) // 2)).
	slide addMorph: runButton.

	top := top + rowHeight + (SlideStyle space: 3).

	codeEditorMorph := self codeEditor.
	codeEditorMorph morphExtent: (right - left) @ (bottom - top).
	codeEditorMorph morphPosition: left @ top.
	slide addMorph: codeEditorMorph.

	^ slide! !

!CodeCoverageMethodSlideBuilder methodsFor: 'running' stamp: 'NPM 6/Sep/2026, 2:56:11 am (UTC)'!
runCoverage

	| compiledMethod analyzer report methodReport browser newEditor right |

	compiledMethod := methodClass >> selector.

	analyzer := CodeCoverageAnalyzer
		toAnalyzeAll: { compiledMethod }
		creatingReportBuildersWith: reportBuilderFactory.
	analyzer value: executionBlock.
	report := analyzer report.
	methodReport := report reportForCompiledMethod: compiledMethod.

	browser := CodeCoverageAnalyzerBrowser displayingCodeCoverageResultsFrom: report.
	browser setSelectedSystemCategory: methodClass category.
	browser selectClass: methodClass.
	browser selectedMessageName: selector.

	newEditor := library codeEditorOn: browser.
	newEditor morphExtent: codeEditorMorph morphExtent.
	newEditor morphPosition: codeEditorMorph morphPosition.

	slide replaceSubmorph: codeEditorMorph by: newEditor.
	codeEditorMorph := newEditor.

	library restyleButton: runButton labeled: 'Re-run' color: SlideStyle surface labelColor: SlideStyle textPrimary.
	right := slide interiorOrigin x + slide interiorExtent x.
	runButton morphPosition: (right - runButton morphWidth) @ runButton morphPosition y.

	self updateBadgeFor: methodReport coverageRatio! !

!CodeCoverageMethodSlideBuilder methodsFor: 'running' stamp: 'NPM 6/Sep/2026, 12:55:08 am (UTC)'!
updateBadgeFor: aCoverageRatio

	| text |

	text := (aCoverageRatio * 100) rounded printString , '% covered'.

	coverageBadge
		ifNil: [
			coverageBadge := library badgeLabeled: text.
			slide addMorph: coverageBadge ]
		ifNotNil: [ coverageBadge contents: text ].

	coverageBadge morphPosition:
		(runButton morphPosition x - (SlideStyle space: 2) - coverageBadge morphWidth)
		@ (runButton morphPosition y + ((runButton morphHeight - coverageBadge morphHeight) // 2))! !

!CodeCoverageMethodSlideBuilder class methodsFor: 'instance creation' stamp: 'NPM 5/Sep/2026, 7:17:20 pm (UTC)'!
on: aClass selector: aSymbol heading: aString executing: aBlock

	^ self new
		setClass: aClass selector: aSymbol;
		heading: aString;
		executing: aBlock;
		yourself! !

!CodeCoverageMethodSlideBuilder class methodsFor: 'instance creation' stamp: 'NPM 5/Sep/2026, 7:27:32 pm (UTC)'!
on: aClass selector: aSymbol heading: aString executing: aBlock creatingReportBuildersWith: aReportBuilderFactory

	^ self new
		setClass: aClass selector: aSymbol;
		heading: aString;
		executing: aBlock;
		creatingReportBuildersWith: aReportBuilderFactory;
		yourself! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'initialization' stamp: 'NPM 5/Sep/2026, 7:52:35 pm (UTC)'!
initialize

	super initialize.
	argumentNames := #().
	argumentValues := #().
	argumentToggles := #().
	testCases := OrderedCollection new.
	testCaseChips := OrderedCollection new! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'building' stamp: 'NPM 6/Sep/2026, 12:55:29 am (UTC)'!
buildChipFor: values

	| text pairs |
	pairs := (1 to: argumentNames size) collect: [ :i | (argumentNames at: i) , ': ' , (values at: i) printString ].
	text := (pairs inject: '' into: [ :acc :each | acc isEmpty ifTrue: [ each ] ifFalse: [ acc , ', ' , each ] ]) , '   x'.
	^ library chipLabeled: text target: self action: #removeTestCase: actionArgument: values! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'building' stamp: 'NPM 6/Sep/2026, 12:55:25 am (UTC)'!
buildToggleFor: index

	| toggle name |
	name := argumentNames at: index.
	toggle := library
		pillButtonLabeled: name , ': false'
		target: self
		action: #toggleArgumentAt:
		actionArgument: index
		color: SlideStyle surface
		labelColor: SlideStyle textSecondary.
	self styleToggle: toggle at: index.
	^ toggle! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'building' stamp: 'NPM 5/Sep/2026, 7:52:36 pm (UTC)'!
chipsAreaHeight

	^ library captionFont lineSpacing + 22! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'building' stamp: 'NPM 6/Sep/2026, 2:56:28 am (UTC)'!
renderTestCaseChips

	| x |
	testCaseChips do: [ :chip | slide removeMorph: chip ].
	testCaseChips := OrderedCollection new.
	emptyStateLabel ifNotNil: [ slide removeMorph: emptyStateLabel. emptyStateLabel := nil ].

	x := slide interiorOrigin x.

	testCases isEmpty
		ifTrue: [
			emptyStateLabel := library secondaryCaption: 'Toggle an argument, then add a test case to build up coverage.'.
			emptyStateLabel morphPosition: x @ (chipsRowTop + ((self chipsAreaHeight - emptyStateLabel morphHeight) // 2)).
			slide addMorph: emptyStateLabel ]
		ifFalse: [
			testCases do: [ :values |
				| chip |
				chip := self buildChipFor: values.
				chip morphPosition: x @ (chipsRowTop + ((self chipsAreaHeight - chip morphHeight) // 2)).
				slide addMorph: chip.
				testCaseChips add: chip.
				x := x + chip morphWidth + (SlideStyle space: 1) ] ]! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'building' stamp: 'NPM 6/Sep/2026, 12:55:27 am (UTC)'!
styleToggle: toggle at: index

	| state fixedExtent |
	state := argumentValues at: index.
	fixedExtent := toggle morphExtent.
	state
		ifTrue: [ library restyleButton: toggle labeled: (argumentNames at: index) , ': ' , state printString color: SlideStyle accent labelColor: SlideStyle background ]
		ifFalse: [ library restyleButton: toggle labeled: (argumentNames at: index) , ': ' , state printString color: SlideStyle surface labelColor: SlideStyle textSecondary ].
	toggle morphExtent: fixedExtent.
	toggle redrawNeeded! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'building' stamp: 'NPM 6/Sep/2026, 2:56:21 am (UTC)'!
value

	| top rowHeight headingLabel barTop barHeight x panel left right bottom |

	slide := library blankSlide.
	left := slide interiorOrigin x.
	top := slide interiorOrigin y.
	right := left + slide interiorExtent x.
	bottom := top + slide interiorExtent y.

	argumentNames := ((methodClass >> selector) methodNode arguments collect: [ :each | each key asString ]) asArray.
	argumentValues := argumentNames collect: [ :each | true ].

	heading ifNotNil: [
		headingLabel := library primaryHeading: heading ].

	runButton := library
		pillButtonLabeled: 'Run Coverage'
		target: self
		action: #runCoverage
		actionArgument: nil
		color: SlideStyle accent
		labelColor: SlideStyle background.
	runButton disable.

	rowHeight := (headingLabel ifNil: [ 0 ] ifNotNil: [ headingLabel morphHeight ]) max: runButton morphHeight.

	headingLabel ifNotNil: [
		headingLabel morphPosition: left @ (top + ((rowHeight - headingLabel morphHeight) // 2)).
		slide addMorph: headingLabel ].

	runButton morphPosition: (right - runButton morphWidth) @ (top + ((rowHeight - runButton morphHeight) // 2)).
	slide addMorph: runButton.

	top := top + rowHeight + (SlideStyle space: 3).

	barTop := top.
	argumentToggles := (1 to: argumentNames size) collect: [ :i | self buildToggleFor: i ].

	addButton := library
		pillButtonLabeled: 'Add Test Case'
		target: self
		action: #addTestCase
		actionArgument: nil
		color: SlideStyle accent2
		labelColor: SlideStyle background.

	barHeight := (argumentToggles inject: addButton morphHeight into: [ :h :toggle | h max: toggle morphHeight ]) + ((SlideStyle space: 2) * 2).

	panel := library panelExtent: (right - left) @ barHeight color: SlideStyle surface.
	panel morphPosition: left @ barTop.
	slide addMorph: panel.

	x := left + (SlideStyle space: 2).
	argumentToggles do: [ :toggle |
		toggle morphPosition: x @ (barTop + ((barHeight - toggle morphHeight) // 2)).
		slide addMorph: toggle.
		x := x + toggle morphWidth + (SlideStyle space: 2) ].

	addButton morphPosition: x @ (barTop + ((barHeight - addButton morphHeight) // 2)).
	slide addMorph: addButton.

	top := barTop + barHeight + (SlideStyle space: 2).
	chipsRowTop := top.
	self renderTestCaseChips.
	top := top + self chipsAreaHeight + (SlideStyle space: 3).

	codeEditorMorph := self codeEditor.
	codeEditorMorph morphExtent: (right - left) @ (bottom - top).
	codeEditorMorph morphPosition: left @ top.
	slide addMorph: codeEditorMorph.

	^ slide! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'running' stamp: 'NPM 5/Sep/2026, 7:52:53 pm (UTC)'!
addTestCase

	| values |
	values := argumentValues copy.
	(testCases includes: values) ifTrue: [ ^ self ].
	testCases add: values.
	runButton enable.
	self renderTestCaseChips! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'running' stamp: 'NPM 5/Sep/2026, 7:52:54 pm (UTC)'!
removeTestCase: values

	testCases remove: values ifAbsent: [ ^ self ].
	testCases isEmpty ifTrue: [ runButton disable ].
	self renderTestCaseChips! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'running' stamp: 'NPM 6/Sep/2026, 2:56:25 am (UTC)'!
runCoverage

	| compiledMethod analyzer report methodReport browser newEditor right |

	compiledMethod := methodClass >> selector.

	analyzer := CodeCoverageAnalyzer
		toAnalyzeAll: { compiledMethod }
		creatingReportBuildersWith: reportBuilderFactory.
	analyzer value: [
		testCases do: [ :values | methodClass new perform: selector withArguments: values ] ].
	report := analyzer report.
	methodReport := report reportForCompiledMethod: compiledMethod.

	browser := CodeCoverageAnalyzerBrowser displayingCodeCoverageResultsFrom: report.
	browser setSelectedSystemCategory: methodClass category.
	browser selectClass: methodClass.
	browser selectedMessageName: selector.

	newEditor := library codeEditorOn: browser.
	newEditor morphExtent: codeEditorMorph morphExtent.
	newEditor morphPosition: codeEditorMorph morphPosition.

	slide replaceSubmorph: codeEditorMorph by: newEditor.
	codeEditorMorph := newEditor.

	library restyleButton: runButton labeled: 'Re-run' color: SlideStyle surface labelColor: SlideStyle textPrimary.
	right := slide interiorOrigin x + slide interiorExtent x.
	runButton morphPosition: (right - runButton morphWidth) @ runButton morphPosition y.

	self updateBadgeFor: methodReport coverageRatio! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'running' stamp: 'NPM 5/Sep/2026, 7:52:52 pm (UTC)'!
toggleArgumentAt: index

	argumentValues at: index put: (argumentValues at: index) not.
	self styleToggle: (argumentToggles at: index) at: index! !

!CodeCoverageTestCaseSlideBuilder class methodsFor: 'instance creation' stamp: 'NPM 5/Sep/2026, 7:52:34 pm (UTC)'!
on: aClass selector: aSymbol heading: aString creatingReportBuildersWith: aReportBuilderFactory

	^ self new
		setClass: aClass selector: aSymbol;
		heading: aString;
		creatingReportBuildersWith: aReportBuilderFactory;
		yourself! !

!SlideStyle class methodsFor: 'colors' stamp: 'NPM 5/Sep/2026, 6:56:35 pm (UTC)'!
accent

	^ self theme == #light
		ifTrue: [ Color fromHexString: '#B23A2E' ]
		ifFalse: [ Color fromHexString: '#E8A33D' ]! !

!SlideStyle class methodsFor: 'colors' stamp: 'NPM 5/Sep/2026, 7:57:24 pm (UTC)'!
accent2

	^ self theme == #light
		ifTrue: [ Color fromHexString: '#3B6E91' ]
		ifFalse: [ Color fromHexString: '#7FB0D8' ]! !

!SlideStyle class methodsFor: 'colors' stamp: 'NPM 5/Sep/2026, 6:56:32 pm (UTC)'!
background

	^ self theme == #light
		ifTrue: [ Color fromHexString: '#FAF8F5' ]
		ifFalse: [ Color fromHexString: '#14161A' ]! !

!SlideStyle class methodsFor: 'colors' stamp: 'NPM 5/Sep/2026, 7:57:24 pm (UTC)'!
surface

	^ self theme == #light
		ifTrue: [ Color fromHexString: '#EFEBE4' ]
		ifFalse: [ Color fromHexString: '#1E2228' ]! !

!SlideStyle class methodsFor: 'colors' stamp: 'NPM 5/Sep/2026, 6:56:33 pm (UTC)'!
textPrimary

	^ self theme == #light
		ifTrue: [ Color fromHexString: '#1A1A1A' ]
		ifFalse: [ Color fromHexString: '#E8E6E3' ]! !

!SlideStyle class methodsFor: 'colors' stamp: 'NPM 5/Sep/2026, 6:56:35 pm (UTC)'!
textSecondary

	^ self theme == #light
		ifTrue: [ Color fromHexString: '#5F6368' ]
		ifFalse: [ Color fromHexString: '#9AA0A6' ]! !

!SlideStyle class methodsFor: 'spacing' stamp: 'NPM 5/Sep/2026, 5:05:57 pm (UTC)'!
margin

	^ self space: 5! !

!SlideStyle class methodsFor: 'spacing' stamp: 'NPM 5/Sep/2026, 5:05:57 pm (UTC)'!
space: aStepIndex

	"aStepIndex is 1-based into the 8px-grid scale: 8, 16, 24, 40, 64."

	^ #(8 16 24 40 64) at: aStepIndex! !

!SlideStyle class methodsFor: 'presentation' stamp: 'NPM 5/Sep/2026, 5:51:52 pm (UTC)'!
canvasExtent

	"The fixed design canvas every slide is authored against, independent of whatever Display we actually run on."

	^ 1920 @ 1080! !

!SlideStyle class methodsFor: 'theme' stamp: 'NPM 5/Sep/2026, 6:58:40 pm (UTC)'!
theme

	^ ColorPalette ifNil: [ #light ]! !

!SlideStyle class methodsFor: 'theme' stamp: 'NPM 5/Sep/2026, 6:56:29 pm (UTC)'!
theme: aSymbol

	ColorPalette := aSymbol! !

!SlideStyle class methodsFor: 'theme' stamp: 'NPM 5/Sep/2026, 6:56:20 pm (UTC)'!
useDarkTheme

	self theme: #dark! !

!SlideStyle class methodsFor: 'theme' stamp: 'NPM 5/Sep/2026, 6:56:20 pm (UTC)'!
useLightTheme

	self theme: #light! !

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 6/Sep/2026, 2:55:58 am (UTC)'!
blankSlide

	| slide |
	slide := BorderedBoxMorph new.
	slide color: SlideStyle background.
	slide borderWidth: 0.
	slide padding: SlideStyle margin.
	slide morphExtent: SlideStyle canvasExtent.
	^ slide! !

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:43:12 pm (UTC)'!
body: contents

	^ LabelMorph
		contents: contents
		font: self bodyFont! !

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:44:28 pm (UTC)'!
bodyFont

	^ (self fontFamily) atPointSize: 28! !

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:54:13 pm (UTC)'!
caption: contents 
	
	^ LabelMorph
		contents: contents
		font: self captionFont! !

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:53:06 pm (UTC)'!
captionFont

	^ (self fontFamily) atPointSize: 20! !

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:44:18 pm (UTC)'!
fontFamily

	^ FontFamily familyNamed: 'Comfortaa'! !

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:52:23 pm (UTC)'!
heading: contents

	^ LabelMorph
		contents: contents
		font: self headingFont! !

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:52:44 pm (UTC)'!
headingFont

	^ (self fontFamily atPointSize: 42) emphasized: 1! !

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:46:10 pm (UTC)'!
imageNamed: filename 
	
	^ ImageMorph fromFileNamed: (self class imagesFolder // filename)! !

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:42:52 pm (UTC)'!
title: contents

	^ LabelMorph
		contents: contents
		font: self titleFont! !

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:44:20 pm (UTC)'!
titleFont

	^ (self fontFamily atPointSize: 56) emphasized: 1! !

!ThesisDefenseMorphLibrary methodsFor: 'widgets' stamp: 'NPM 6/Sep/2026, 12:54:47 am (UTC)'!
badgeLabeled: aString

	^ (self caption: aString) color: SlideStyle accent2! !

!ThesisDefenseMorphLibrary methodsFor: 'widgets' stamp: 'NPM 6/Sep/2026, 12:54:44 am (UTC)'!
chipLabeled: aString target: aTarget action: aSelector actionArgument: anObject

	| chip |
	chip := ThesisDefenseButtonMorph model: aTarget action: aSelector actionArgument: anObject label: nil.
	chip mouseOverColor: (Color fromHexString: '#B23A2E').
	self restyleButton: chip labeled: aString color: SlideStyle background labelColor: SlideStyle textSecondary.
	chip morphExtent: chip morphWidth - 8 @ (chip morphHeight - 4).
	^ chip! !

!ThesisDefenseMorphLibrary methodsFor: 'widgets' stamp: 'NPM 6/Sep/2026, 12:54:49 am (UTC)'!
codeEditorOn: aBrowser

	| editor |
	editor := TextModelMorph
		textProvider: aBrowser
		textGetter: #acceptedContents
		textSetter: #contents:notifying:
		selectionGetter: #contentsSelection.
	editor layoutSpec: LayoutSpec useAll.
	^ editor! !

!ThesisDefenseMorphLibrary methodsFor: 'widgets' stamp: 'NPM 6/Sep/2026, 12:54:45 am (UTC)'!
panelExtent: anExtent color: aColor

	^ ColoredBoxMorph new
		color: aColor;
		morphExtent: anExtent;
		yourself! !

!ThesisDefenseMorphLibrary methodsFor: 'widgets' stamp: 'NPM 6/Sep/2026, 12:54:43 am (UTC)'!
pillButtonLabeled: aString target: aTarget action: aSelector actionArgument: anObject color: bgColor labelColor: fgColor

	| button |
	button := ThesisDefenseButtonMorph model: aTarget action: aSelector actionArgument: anObject label: nil.
	self restyleButton: button labeled: aString color: bgColor labelColor: fgColor.
	^ button! !

!ThesisDefenseMorphLibrary methodsFor: 'widgets' stamp: 'NPM 6/Sep/2026, 12:54:41 am (UTC)'!
restyleButton: aButton labeled: aString color: bgColor labelColor: fgColor

	aButton label: aString font: self captionFont.
	aButton morphExtent: aButton morphWidth + 32 @ (aButton morphHeight + 16).
	aButton labelColor: fgColor.
	aButton color: bgColor! !

!ThesisDefenseMorphLibrary methodsFor: 'widgets' stamp: 'NPM 6/Sep/2026, 1:35:54 am (UTC)'!
spacer: aStepIndex

	^ ColoredBoxMorph new color: Color transparent; morphExtent: 0 @ (SlideStyle space: aStepIndex); yourself! !

!ThesisDefenseMorphLibrary methodsFor: 'text' stamp: 'NPM 6/Sep/2026, 1:32:55 am (UTC)'!
primaryBody: aString

	^ (self body: aString) color: SlideStyle textPrimary! !

!ThesisDefenseMorphLibrary methodsFor: 'text' stamp: 'NPM 6/Sep/2026, 1:32:57 am (UTC)'!
primaryCaption: aString

	^ (self caption: aString) color: SlideStyle textPrimary! !

!ThesisDefenseMorphLibrary methodsFor: 'text' stamp: 'NPM 6/Sep/2026, 1:32:54 am (UTC)'!
primaryHeading: aString

	^ (self heading: aString) color: SlideStyle textPrimary! !

!ThesisDefenseMorphLibrary methodsFor: 'text' stamp: 'NPM 6/Sep/2026, 1:32:53 am (UTC)'!
primaryTitle: aString

	^ (self title: aString) color: SlideStyle textPrimary! !

!ThesisDefenseMorphLibrary methodsFor: 'text' stamp: 'NPM 6/Sep/2026, 1:32:57 am (UTC)'!
secondaryBody: aString

	^ (self body: aString) color: SlideStyle textSecondary! !

!ThesisDefenseMorphLibrary methodsFor: 'text' stamp: 'NPM 6/Sep/2026, 1:32:58 am (UTC)'!
secondaryCaption: aString

	^ (self caption: aString) color: SlideStyle textSecondary! !

!ThesisDefenseMorphLibrary methodsFor: 'text' stamp: 'NPM 6/Sep/2026, 1:32:55 am (UTC)'!
secondaryHeading: aString

	^ (self heading: aString) color: SlideStyle textSecondary! !

!ThesisDefenseMorphLibrary methodsFor: 'text' stamp: 'NPM 6/Sep/2026, 1:32:53 am (UTC)'!
secondaryTitle: aString

	^ (self title: aString) color: SlideStyle textSecondary! !

!ThesisDefenseMorphLibrary class methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:40:30 pm (UTC)'!
fontsFolder
	
	^ (CodePackage installedPackages at: #ThesisDefense) fullFileName asFileEntry parent / 'thesis' / 'fonts'.! !

!ThesisDefenseMorphLibrary class methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:45:53 pm (UTC)'!
imagesFolder
	
	^ (CodePackage installedPackages at: #ThesisDefense) fullFileName asFileEntry parent / 'thesis' / 'images'.! !

!ThesisDefenseMorphLibrary class methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:40:19 pm (UTC)'!
loadFonts

	TrueTypeFontFamily readAllTrueTypeFontsIn: self fontsFolder.! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 7:53:08 pm (UTC)'!
branchCoverageSlide

	^ (CodeCoverageTestCaseSlideBuilder
		on: CodeCoverageExamples
		selector: #decisionCoverageExample:
		heading: 'Branch Coverage'
		creatingReportBuildersWith: DecisionCoverageReportBuilder) value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 9:08:18 pm (UTC)'!
codeCoverageDefinition
	
	| lib |
	lib := ThesisDefenseMorphLibrary new.
	^ lib blankSlide addMorph: (lib title: 'code coverage definition'); yourself! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 8:11:08 pm (UTC)'!
conditionCoverageSlide

	^ (CodeCoverageTestCaseSlideBuilder
		on: CodeCoverageExamples
		selector: #conditionTest:or:
		heading: 'Condition Coverage'
		creatingReportBuildersWith: ConditionCoverageReportBuilder) value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 7:30:22 pm (UTC)'!
methodCoverageSlide

	^ (CodeCoverageMethodSlideBuilder
		on: CodeCoverageExamples
		selector: #methodCoverageExample
		heading: 'Method Coverage'
		executing: [ CodeCoverageExamples new methodCoverageExample ]
		creatingReportBuildersWith: MethodCoverageReportBuilder) value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 6:49:06 pm (UTC)'!
present

	SlidesPresenter present: self slides! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 9:06:10 pm (UTC)'!
slides
	
	^ {
		self titleSlide.
		self codeCoverageDefinition.
		self methodCoverageSlide.
		self statementCoverageSlide.
		self branchCoverageSlide.
		self conditionCoverageSlide.
	}! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 7:30:23 pm (UTC)'!
statementCoverageSlide

	^ (CodeCoverageMethodSlideBuilder
		on: CodeCoverageExamples
		selector: #statementCoverageExample
		heading: 'Statement Coverage'
		executing: [ CodeCoverageExamples new statementCoverageExample ]
		creatingReportBuildersWith: StatementCoverageReportBuilder) value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 6:49:52 pm (UTC)'!
titleSlide
	
	^ TitleSlideBuilder new value! !

!ThesisDefensePresentation class methodsFor: 'opening' stamp: 'NPM 5/Sep/2026, 6:48:59 pm (UTC)'!
present
	
	^ self new present! !

!TitleSlideBuilder methodsFor: 'building' stamp: 'NPM 5/Sep/2026, 4:33:19 pm (UTC)'!
initialize
	
	super initialize.
	
	library := ThesisDefenseMorphLibrary new.! !

!TitleSlideBuilder methodsFor: 'building' stamp: 'NPM 6/Sep/2026, 1:36:00 am (UTC)'!
titleColumn

	| titleLines column leftAligned |

	leftAligned := LayoutSizeSpec keepMorphExtent offAxisEdgeWeight: #columnLeft.

	titleLines := LinearLayoutMorph newColumn.
	titleLines separation: 0.
	titleLines color: Color transparent.
	#('Cobertura de código' 'en lenguajes dinámicamente tipados' 'usando meta-programación')
		do: [:each | titleLines addMorph: (library primaryTitle: each) layoutSpec: leftAligned].
	titleLines morphExtent: titleLines minimumExtent.

	column := LinearLayoutMorph newColumn.
	column separation: 0.
	column color: Color transparent.
	column
		addMorph: titleLines layoutSpec: leftAligned;
		addMorph: (library spacer: 4) layoutSpec: leftAligned;
		addMorph: (library secondaryCaption: 'Tesis de Licenciatura en Ciencias de la Computación') layoutSpec: leftAligned;
		addMorph: (library spacer: 3) layoutSpec: leftAligned;
		addMorph: (library primaryBody: 'Nicolás Papagna Maldonado') layoutSpec: leftAligned;
		addMorph: (library spacer: 1) layoutSpec: leftAligned;
		addMorph: (library secondaryCaption: 'Director: Hernán Wilkinson') layoutSpec: leftAligned.
	column morphExtent: column minimumExtent.
	column morphPosition: SlideStyle margin @ ((SlideStyle canvasExtent y - column morphHeight) // 2 - (SlideStyle space: 4)).

	^ column! !

!TitleSlideBuilder methodsFor: 'building' stamp: 'NPM 5/Sep/2026, 6:18:49 pm (UTC)'!
value

	| slide |

	slide := library blankSlide.
	slide addMorph: self titleColumn.

	^ slide! !

!LayoutEdgesSpec class methodsFor: '*ThesisDefense' stamp: 'NPM 5/Sep/2026, 4:21:30 pm (UTC)'!
leftColumn
	
	^ self tlEdgesWeight: 0@0 offset: 0@0 brEdgesWeight: 0.5@1 offset: 0! !

!LayoutEdgesSpec class methodsFor: '*ThesisDefense' stamp: 'NPM 5/Sep/2026, 4:22:08 pm (UTC)'!
rightColumn
	
	^ self tlEdgesWeight: 0.5@0 offset: 0@0 brEdgesWeight: 1@1 offset: 0! !
