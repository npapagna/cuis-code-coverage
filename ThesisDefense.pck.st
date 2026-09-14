'From Cuis7.9 [latest update: #8149] on 14 September 2026 at 11:21:17 am'!
'Description Fix droste opening slide'!
!provides: 'ThesisDefense' 1 121!
!requires: 'CodeCoverageDemo' nil nil nil!
!requires: 'Cuis-Base' nil nil nil!
!requires: 'Aconcagua' 1 25 nil!
!requires: 'CodeCoverage' nil nil nil!
!requires: 'Graphics-Files-Additional' nil nil nil!
SystemOrganization addCategory: #ThesisDefense!


!classDefinition: #InstrumentedSourceProvider category: #ThesisDefense!
CodeProvider subclass: #InstrumentedSourceProvider
	instanceVariableNames: 'source methodClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'InstrumentedSourceProvider class' category: #ThesisDefense!
InstrumentedSourceProvider class
	instanceVariableNames: ''!

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

!classDefinition: #ThesisDefensePanelMorph category: #ThesisDefense!
ColoredBoxMorph subclass: #ThesisDefensePanelMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'ThesisDefensePanelMorph class' category: #ThesisDefense!
ThesisDefensePanelMorph class
	instanceVariableNames: ''!

!classDefinition: #ClippingBoxMorph category: #ThesisDefense!
BoxMorph subclass: #ClippingBoxMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'ClippingBoxMorph class' category: #ThesisDefense!
ClippingBoxMorph class
	instanceVariableNames: ''!

!classDefinition: #BooleanTestCasesGenerator category: #ThesisDefense!
Object subclass: #BooleanTestCasesGenerator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'BooleanTestCasesGenerator class' category: #ThesisDefense!
BooleanTestCasesGenerator class
	instanceVariableNames: ''!

!classDefinition: #EmbeddedPackageBrowserSlideBuilder category: #ThesisDefense!
Object subclass: #EmbeddedPackageBrowserSlideBuilder
	instanceVariableNames: 'library packageName heading'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'EmbeddedPackageBrowserSlideBuilder class' category: #ThesisDefense!
EmbeddedPackageBrowserSlideBuilder class
	instanceVariableNames: ''!

!classDefinition: #EmbeddedWorkspaceSlideBuilder category: #ThesisDefense!
Object subclass: #EmbeddedWorkspaceSlideBuilder
	instanceVariableNames: 'library contents heading'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'EmbeddedWorkspaceSlideBuilder class' category: #ThesisDefense!
EmbeddedWorkspaceSlideBuilder class
	instanceVariableNames: ''!

!classDefinition: #ImageSlideBuilder category: #ThesisDefense!
Object subclass: #ImageSlideBuilder
	instanceVariableNames: 'library filename'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'ImageSlideBuilder class' category: #ThesisDefense!
ImageSlideBuilder class
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

!classDefinition: #CodeCoverageComparisonSlideBuilder category: #ThesisDefense!
MethodSlideBuilder subclass: #CodeCoverageComparisonSlideBuilder
	instanceVariableNames: 'executionBlock runButton clearButton slide leftEditorMorph rightEditorMorph leftCaptionLabel rightCaptionLabel leftBadge rightBadge leftReportBuilderFactory rightReportBuilderFactory leftLabel rightLabel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'CodeCoverageComparisonSlideBuilder class' category: #ThesisDefense!
CodeCoverageComparisonSlideBuilder class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageComparisonTestCaseSlideBuilder category: #ThesisDefense!
CodeCoverageComparisonSlideBuilder subclass: #CodeCoverageComparisonTestCaseSlideBuilder
	instanceVariableNames: 'argumentNames testCases testCaseChips selectedTestCases'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'CodeCoverageComparisonTestCaseSlideBuilder class' category: #ThesisDefense!
CodeCoverageComparisonTestCaseSlideBuilder class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageMethodSlideBuilder category: #ThesisDefense!
MethodSlideBuilder subclass: #CodeCoverageMethodSlideBuilder
	instanceVariableNames: 'executionBlock runChip coverageBadge slide codeEditorMorph reportBuilderFactory secondaryClass secondarySelector secondaryCodeEditorMorph shouldAnalyzeSecondaryClass topRowTop topRowHeight coverageActive headingLabel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'CodeCoverageMethodSlideBuilder class' category: #ThesisDefense!
CodeCoverageMethodSlideBuilder class
	instanceVariableNames: ''!

!classDefinition: #CodeCoverageTestCaseSlideBuilder category: #ThesisDefense!
CodeCoverageMethodSlideBuilder subclass: #CodeCoverageTestCaseSlideBuilder
	instanceVariableNames: 'argumentNames testCases testCaseChips selectedTestCases testCasesGenerator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'CodeCoverageTestCaseSlideBuilder class' category: #ThesisDefense!
CodeCoverageTestCaseSlideBuilder class
	instanceVariableNames: ''!

!classDefinition: #PipelineInstrumentSlideBuilder category: #ThesisDefense!
MethodSlideBuilder subclass: #PipelineInstrumentSlideBuilder
	instanceVariableNames: 'slide leftEditorMorph rightEditorMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'PipelineInstrumentSlideBuilder class' category: #ThesisDefense!
PipelineInstrumentSlideBuilder class
	instanceVariableNames: ''!

!classDefinition: #PipelineRoadmapSlideBuilder category: #ThesisDefense!
Object subclass: #PipelineRoadmapSlideBuilder
	instanceVariableNames: 'library currentStep'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'PipelineRoadmapSlideBuilder class' category: #ThesisDefense!
PipelineRoadmapSlideBuilder class
	instanceVariableNames: ''!

!classDefinition: #PolaroidSlideBuilder category: #ThesisDefense!
Object subclass: #PolaroidSlideBuilder
	instanceVariableNames: 'library filename rotationDegrees photoWidth photoHeight caption'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ThesisDefense'!
!classDefinition: 'PolaroidSlideBuilder class' category: #ThesisDefense!
PolaroidSlideBuilder class
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
	classVariableNames: 'ImageCache'
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

!InstrumentedSourceProvider methodsFor: 'accessing' stamp: 'NPM 13/Sep/2026, 6:49:06 pm (UTC)'!
methodClass: aClass

	methodClass := aClass! !

!InstrumentedSourceProvider methodsFor: 'accessing' stamp: 'NPM 13/Sep/2026, 6:49:06 pm (UTC)'!
selectedClass

	^ methodClass! !

!InstrumentedSourceProvider methodsFor: 'accessing' stamp: 'NPM 13/Sep/2026, 5:19:27 pm (UTC)'!
source: aString

	source := aString! !

!InstrumentedSourceProvider methodsFor: 'contents' stamp: 'NPM 13/Sep/2026, 5:19:28 pm (UTC)'!
acceptedStringOrText

	^ source! !

!InstrumentedSourceProvider methodsFor: 'contents' stamp: 'NPM 13/Sep/2026, 5:19:29 pm (UTC)'!
contents: input notifying: aController

	"Read-only: this slide displays a live-generated snapshot of instrumented
	source, it is not meant to be edited."

	^ true! !

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

!ThesisDefenseButtonMorph methodsFor: 'drawing' stamp: 'NPM 12/Sep/2026, 3:41:22 pm (UTC)'!
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

!SlidesPresenter methodsFor: 'keyboard' stamp: 'NPM 6/Sep/2026, 3:59:17 pm (UTC)'!
doubleClick: aMouseEvent localPosition: localEventPosition

	self rotation: 0 scale: 1.
	self morphPosition: 0 @ 0.
	self currentSlide: currentSlide.
	self comeToFront! !

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

!SlidesPresenter methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 7:44:10 pm (UTC)'!
clipsSubmorphs

	^ true ! !

!SlidesPresenter methodsFor: 'geometry' stamp: 'NPM 13/Sep/2026, 9:15:51 pm (UTC)'!
dragEvent: aMouseEvent localPosition: aPoint
	"Shrink and tilt while being dragged, so it feels like a card being picked up off the desktop."

	super dragEvent: aMouseEvent localPosition: aPoint.
	self rotation: -45 degreesToRadians scale: 0.5! !

!SlidesPresenter class methodsFor: 'instance creation' stamp: 'NPM 5/Sep/2026, 6:14:45 pm (UTC)'!
on: aCollectionOfSlides

	^ self new
		slides: aCollectionOfSlides;
		yourself! !

!SlidesPresenter class methodsFor: 'presenting' stamp: 'NPM 5/Sep/2026, 6:48:28 pm (UTC)'!
present: aCollectionOfSlides

	(self on: aCollectionOfSlides) present! !

!ThesisDefensePanelMorph methodsFor: 'drawing' stamp: 'NPM 12/Sep/2026, 3:44:46 pm (UTC)'!
drawOn: aCanvas

	aCanvas roundRect: self localBounds color: color radius: self morphHeight / 2! !

!ClippingBoxMorph methodsFor: 'geometry testing' stamp: 'NPM 12/Sep/2026, 12:25:22 am (UTC)'!
clipsSubmorphs

	^ true! !

!ClippingBoxMorph methodsFor: 'drawing' stamp: 'NPM 12/Sep/2026, 12:25:22 am (UTC)'!
drawOn: aCanvas

	"Transparent - only here to clip our submorphs to our bounds."! !

!BooleanTestCasesGenerator methodsFor: 'as yet unclassified' stamp: 'NPM 12/Sep/2026, 10:36:59 pm (UTC)'!
value: argumentNames

	| combos |
	combos := OrderedCollection with: #().
	argumentNames do: [ :each |
		| next |
		next := OrderedCollection new.
		combos do: [ :prefix |
			next add: prefix , #(true).
			next add: prefix , #(false) ].
		combos := next ].
	^ combos asArray! !

!EmbeddedPackageBrowserSlideBuilder methodsFor: 'initialization' stamp: 'NPM 13/Sep/2026, 7:56:27 pm (UTC)'!
initialize

	super initialize.

	library := ThesisDefenseMorphLibrary new! !

!EmbeddedPackageBrowserSlideBuilder methodsFor: 'building' stamp: 'NPM 13/Sep/2026, 7:56:28 pm (UTC)'!
setPackageName: aString

	packageName := aString! !

!EmbeddedPackageBrowserSlideBuilder methodsFor: 'building' stamp: 'NPM 14/Sep/2026, 1:04:46 pm (UTC)'!
value

	| slide package browser window content firstCategory firstClass left top bottom |

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

	package := CodePackage named: packageName createIfAbsent: false registerIfNew: false.
	browser := SinglePackageBrowser new package: package; yourself.

	firstCategory := package systemCategories first.
	browser setSelectedSystemCategory: firstCategory.
	firstClass := browser basicClassList first.
	firstClass ifNotNil: [ browser selectClass: firstClass ].

	window := BrowserWindow new.
	window model: browser; buildMorphicWindow.
	window setLabel: packageName.

	"SystemWindow>>openInWorld is the only place this normally gets sent - it
	propagates the theme's pane color to every widget in the window. We never
	send the window #openInWorld (embedding it directly instead, since
	openInWorld can defer itself via UISupervisor when not run from the UI
	process, which would leave the window only half-built), so without this
	the panes are left with whatever gray default they were built with."
	Theme current widgetsColorFromToolColor ifTrue: [
		window widgetsColor: window windowColor ].

	"The whole window - title bar, border, and close/collapse/expand/menu
	buttons - is placed on the slide, not just its layoutMorph. Embedding
	only the layoutMorph dropped the frame but also broke the window's
	context menu, so the full window is embedded instead."
	content := window.
	content morphExtent: slide interiorExtent x @ (bottom - top).
	content morphPosition: left @ top.

	slide addMorph: content.

	^ slide! !

!EmbeddedPackageBrowserSlideBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 8:52:59 pm (UTC)'!
setHeading: aString

	heading := aString! !

!EmbeddedPackageBrowserSlideBuilder class methodsFor: 'instance creation' stamp: 'NPM 13/Sep/2026, 7:56:26 pm (UTC)'!
on: aPackageName

	^ self new
		setPackageName: aPackageName;
		yourself! !

!EmbeddedPackageBrowserSlideBuilder class methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 8:53:00 pm (UTC)'!
on: aPackageName heading: aHeadingString

	^ self new
		setPackageName: aPackageName;
		setHeading: aHeadingString;
		yourself! !

!EmbeddedWorkspaceSlideBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 8:37:09 pm (UTC)'!
initialize

	super initialize.

	library := ThesisDefenseMorphLibrary new.
	contents := ''! !

!EmbeddedWorkspaceSlideBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 8:37:10 pm (UTC)'!
setContents: aString

	contents := aString! !

!EmbeddedWorkspaceSlideBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 8:50:26 pm (UTC)'!
setHeading: aString

	heading := aString! !

!EmbeddedWorkspaceSlideBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 14/Sep/2026, 1:04:41 pm (UTC)'!
value

	| slide workspace window content left top bottom |

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

	workspace := Workspace new.
	workspace contents: contents.

	window := WorkspaceWindow new model: workspace.
	window setLabel: 'Workspace'.
	window layoutMorph
		addMorph: ((TextModelMorph withModel: workspace) wrapFlag: true)
		proportionalHeight: 1.

	"SystemWindow>>openInWorld is the only place this normally gets sent - it
	propagates the theme's pane color to every widget in the window. We never
	send the window #openInWorld (embedding it directly instead, since
	openInWorld can defer itself via UISupervisor when not run from the UI
	process, which would leave the window only half-built), so without this
	the panes are left with whatever gray default they were built with."
	Theme current widgetsColorFromToolColor ifTrue: [
		window widgetsColor: window windowColor ].

	"The whole window - title bar, border, and close/collapse/expand/menu
	buttons - is placed on the slide, not just its layoutMorph. Embedding
	only the layoutMorph dropped the frame but also broke the window's
	context menu, so the full window is embedded instead."
	content := window.
	content morphExtent: slide interiorExtent x @ (bottom - top).
	content morphPosition: left @ top.

	slide addMorph: content.

	^ slide! !

!EmbeddedWorkspaceSlideBuilder class methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 8:37:10 pm (UTC)'!
on: aString

	^ self new
		setContents: aString;
		yourself! !

!EmbeddedWorkspaceSlideBuilder class methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 8:50:27 pm (UTC)'!
on: aString heading: aHeadingString

	^ self new
		setContents: aString;
		setHeading: aHeadingString;
		yourself! !

!ImageSlideBuilder methodsFor: 'building' stamp: 'NPM 12/Sep/2026, 12:14:01 am (UTC)'!
initialize

	super initialize.

	library := ThesisDefenseMorphLibrary new.! !

!ImageSlideBuilder methodsFor: 'building' stamp: 'NPM 12/Sep/2026, 12:14:01 am (UTC)'!
setFilename: aString

	filename := aString.! !

!ImageSlideBuilder methodsFor: 'building' stamp: 'NPM 12/Sep/2026, 12:14:10 am (UTC)'!
value

	| slide image canvasExtent |

	slide := library blankSlide.
	canvasExtent := SlideStyle canvasExtent.

	image := library imageNamed: filename.
	image scaleToFitInto: (0 @ 0 extent: canvasExtent).
	slide addMorph: image.

	^ slide! !

!ImageSlideBuilder class methodsFor: 'instance creation' stamp: 'NPM 12/Sep/2026, 12:14:00 am (UTC)'!
on: aFilename

	^ self new
		setFilename: aFilename;
		yourself! !

!MethodSlideBuilder methodsFor: 'building' stamp: 'NPM 12/Sep/2026, 12:37:09 pm (UTC)'!
codeEditor

	^ self codeEditorForClass: methodClass selector: selector! !

!MethodSlideBuilder methodsFor: 'building' stamp: 'NPM 12/Sep/2026, 12:37:08 pm (UTC)'!
codeEditorForClass: aClass selector: aSymbol

	| browser |

	browser := Browser new.
	browser setSelectedSystemCategory: aClass category.
	browser selectClass: aClass.
	browser selectedMessageName: aSymbol.

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

!CodeCoverageComparisonSlideBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 12/Sep/2026, 2:50:59 pm (UTC)'!
executing: aBlock

	executionBlock := aBlock! !

!CodeCoverageComparisonSlideBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 12/Sep/2026, 2:50:58 pm (UTC)'!
initialize

	super initialize.

	leftReportBuilderFactory := DecisionConditionCoverageReportBuilder.
	rightReportBuilderFactory := DecisionConditionCoverageReportBuilder.
	leftLabel := 'Left'.
	rightLabel := 'Right'! !

!CodeCoverageComparisonSlideBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 12/Sep/2026, 2:51:00 pm (UTC)'!
leftLabeled: aString creatingReportBuildersWith: aReportBuilderFactory

	leftLabel := aString.
	leftReportBuilderFactory := aReportBuilderFactory! !

!CodeCoverageComparisonSlideBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 12/Sep/2026, 2:51:01 pm (UTC)'!
rightLabeled: aString creatingReportBuildersWith: aReportBuilderFactory

	rightLabel := aString.
	rightReportBuilderFactory := aReportBuilderFactory! !

!CodeCoverageComparisonSlideBuilder methodsFor: 'building' stamp: 'NPM 12/Sep/2026, 2:51:10 pm (UTC)'!
value

	| top rowHeight headingLabel left right bottom gap columnWidth leftColumnLeft rightColumnLeft rightColumnRight captionHeight |

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

	clearButton := library
		pillButtonLabeled: 'Clear'
		target: self
		action: #clearCoverage
		actionArgument: nil
		color: SlideStyle surface
		labelColor: SlideStyle textSecondary.
	clearButton disable.

	rowHeight := ((headingLabel ifNil: [ 0 ] ifNotNil: [ headingLabel morphHeight ]) max: runButton morphHeight) max: clearButton morphHeight.

	headingLabel ifNotNil: [
		headingLabel morphPosition: left @ (top + ((rowHeight - headingLabel morphHeight) // 2)).
		slide addMorph: headingLabel ].

	runButton morphPosition: (right - runButton morphWidth) @ (top + ((rowHeight - runButton morphHeight) // 2)).
	slide addMorph: runButton.

	clearButton morphPosition: (runButton morphPosition x - (SlideStyle space: 2) - clearButton morphWidth) @ (top + ((rowHeight - clearButton morphHeight) // 2)).
	slide addMorph: clearButton.

	top := top + rowHeight + (SlideStyle space: 3).

	gap := SlideStyle space: 3.
	columnWidth := (right - left - gap) // 2.
	leftColumnLeft := left.
	rightColumnLeft := leftColumnLeft + columnWidth + gap.
	rightColumnRight := right.

	leftCaptionLabel := library secondaryCaption: leftLabel.
	leftCaptionLabel morphPosition: leftColumnLeft @ top.
	slide addMorph: leftCaptionLabel.

	rightCaptionLabel := library secondaryCaption: rightLabel.
	rightCaptionLabel morphPosition: rightColumnLeft @ top.
	slide addMorph: rightCaptionLabel.

	captionHeight := leftCaptionLabel morphHeight max: rightCaptionLabel morphHeight.
	top := top + captionHeight + (SlideStyle space: 2).

	leftEditorMorph := self codeEditor.
	leftEditorMorph morphExtent: columnWidth @ (bottom - top).
	leftEditorMorph morphPosition: leftColumnLeft @ top.
	slide addMorph: leftEditorMorph.

	rightEditorMorph := self codeEditor.
	rightEditorMorph morphExtent: (rightColumnRight - rightColumnLeft) @ (bottom - top).
	rightEditorMorph morphPosition: rightColumnLeft @ top.
	slide addMorph: rightEditorMorph.

	^ slide! !

!CodeCoverageComparisonSlideBuilder methodsFor: 'running' stamp: 'NPM 12/Sep/2026, 4:37:16 pm (UTC)'!
clearCoverage

	| newLeftEditor newRightEditor right |

	leftBadge ifNotNil: [
		slide removeMorph: leftBadge.
		leftBadge := nil ].
	rightBadge ifNotNil: [
		slide removeMorph: rightBadge.
		rightBadge := nil ].

	newLeftEditor := self codeEditor.
	newLeftEditor morphExtent: leftEditorMorph morphExtent.
	newLeftEditor morphPosition: leftEditorMorph morphPosition.
	leftEditorMorph owner replaceSubmorph: leftEditorMorph by: newLeftEditor.
	leftEditorMorph := newLeftEditor.

	newRightEditor := self codeEditor.
	newRightEditor morphExtent: rightEditorMorph morphExtent.
	newRightEditor morphPosition: rightEditorMorph morphPosition.
	rightEditorMorph owner replaceSubmorph: rightEditorMorph by: newRightEditor.
	rightEditorMorph := newRightEditor.

	runButton ifNotNil: [
		library restyleButton: runButton labeled: 'Run Coverage' color: SlideStyle accent labelColor: SlideStyle background.
		right := slide interiorOrigin x + slide interiorExtent x.
		runButton morphPosition: (right - runButton morphWidth) @ runButton morphPosition y ].

	clearButton ifNotNil: [
		clearButton disable.
		clearButton morphPosition: (runButton morphPosition x - (SlideStyle space: 2) - clearButton morphWidth) @ clearButton morphPosition y ]! !

!CodeCoverageComparisonSlideBuilder methodsFor: 'running' stamp: 'NPM 12/Sep/2026, 4:37:12 pm (UTC)'!
runCoverage

	| compiledMethod right |

	compiledMethod := methodClass >> selector.

	self runLeftCoverageOn: compiledMethod.
	self runRightCoverageOn: compiledMethod.

	runButton ifNotNil: [
		library restyleButton: runButton labeled: 'Re-run' color: SlideStyle surface labelColor: SlideStyle textPrimary.
		right := slide interiorOrigin x + slide interiorExtent x.
		runButton morphPosition: (right - runButton morphWidth) @ runButton morphPosition y ].

	clearButton ifNotNil: [
		clearButton enable.
		clearButton morphPosition: (runButton morphPosition x - (SlideStyle space: 2) - clearButton morphWidth) @ clearButton morphPosition y ]! !

!CodeCoverageComparisonSlideBuilder methodsFor: 'running' stamp: 'NPM 12/Sep/2026, 2:51:18 pm (UTC)'!
runLeftCoverageOn: compiledMethod

	| analyzer report methodReport browser newEditor |

	analyzer := CodeCoverageAnalyzer
		toAnalyzeAll: { compiledMethod }
		creatingReportBuildersWith: leftReportBuilderFactory.
	analyzer value: executionBlock.
	report := analyzer report.
	methodReport := report reportForCompiledMethod: compiledMethod.

	browser := CodeCoverageAnalyzerBrowser displayingCodeCoverageResultsFrom: report.
	browser setSelectedSystemCategory: methodClass category.
	browser selectClass: methodClass.
	browser selectedMessageName: selector.

	newEditor := library codeEditorOn: browser.
	newEditor morphExtent: leftEditorMorph morphExtent.
	newEditor morphPosition: leftEditorMorph morphPosition.

	leftEditorMorph owner replaceSubmorph: leftEditorMorph by: newEditor.
	leftEditorMorph := newEditor.

	self updateLeftBadgeFor: methodReport coverageRatio! !

!CodeCoverageComparisonSlideBuilder methodsFor: 'running' stamp: 'NPM 12/Sep/2026, 2:51:20 pm (UTC)'!
runRightCoverageOn: compiledMethod

	| analyzer report methodReport browser newEditor |

	analyzer := CodeCoverageAnalyzer
		toAnalyzeAll: { compiledMethod }
		creatingReportBuildersWith: rightReportBuilderFactory.
	analyzer value: executionBlock.
	report := analyzer report.
	methodReport := report reportForCompiledMethod: compiledMethod.

	browser := CodeCoverageAnalyzerBrowser displayingCodeCoverageResultsFrom: report.
	browser setSelectedSystemCategory: methodClass category.
	browser selectClass: methodClass.
	browser selectedMessageName: selector.

	newEditor := library codeEditorOn: browser.
	newEditor morphExtent: rightEditorMorph morphExtent.
	newEditor morphPosition: rightEditorMorph morphPosition.

	rightEditorMorph owner replaceSubmorph: rightEditorMorph by: newEditor.
	rightEditorMorph := newEditor.

	self updateRightBadgeFor: methodReport coverageRatio! !

!CodeCoverageComparisonSlideBuilder methodsFor: 'running' stamp: 'NPM 12/Sep/2026, 2:51:23 pm (UTC)'!
updateLeftBadgeFor: aCoverageRatio

	| text |

	text := (aCoverageRatio * 100) rounded printString , '% covered'.

	leftBadge
		ifNil: [
			leftBadge := library badgeLabeled: text.
			slide addMorph: leftBadge ]
		ifNotNil: [ leftBadge contents: text ].

	leftBadge morphPosition:
		(leftCaptionLabel morphPosition x + leftCaptionLabel morphWidth + (SlideStyle space: 1))
		@ (leftCaptionLabel morphPosition y + ((leftCaptionLabel morphHeight - leftBadge morphHeight) // 2))! !

!CodeCoverageComparisonSlideBuilder methodsFor: 'running' stamp: 'NPM 12/Sep/2026, 2:51:25 pm (UTC)'!
updateRightBadgeFor: aCoverageRatio

	| text |

	text := (aCoverageRatio * 100) rounded printString , '% covered'.

	rightBadge
		ifNil: [
			rightBadge := library badgeLabeled: text.
			slide addMorph: rightBadge ]
		ifNotNil: [ rightBadge contents: text ].

	rightBadge morphPosition:
		(rightCaptionLabel morphPosition x + rightCaptionLabel morphWidth + (SlideStyle space: 1))
		@ (rightCaptionLabel morphPosition y + ((rightCaptionLabel morphHeight - rightBadge morphHeight) // 2))! !

!CodeCoverageComparisonSlideBuilder class methodsFor: 'instance creation' stamp: 'NPM 12/Sep/2026, 2:50:57 pm (UTC)'!
on: aClass selector: aSymbol heading: aString executing: aBlock

	^ self new
		setClass: aClass selector: aSymbol;
		heading: aString;
		executing: aBlock;
		yourself! !

!CodeCoverageComparisonTestCaseSlideBuilder methodsFor: 'initialization' stamp: 'NPM 12/Sep/2026, 3:20:43 pm (UTC)'!
initialize

	super initialize.
	argumentNames := #().
	testCases := #().
	testCaseChips := OrderedCollection new.
	selectedTestCases := Set new! !

!CodeCoverageComparisonTestCaseSlideBuilder methodsFor: 'building' stamp: 'NPM 12/Sep/2026, 3:41:27 pm (UTC)'!
buildChipFor: values

	^ library
		pillButtonLabeled: (self labelFor: values)
		target: self
		action: #toggleTestCase:
		actionArgument: values
		color: SlideStyle background
		labelColor: SlideStyle textSecondary! !

!CodeCoverageComparisonTestCaseSlideBuilder methodsFor: 'building' stamp: 'NPM 12/Sep/2026, 10:37:37 pm (UTC)'!
computeTestCases

	^ BooleanTestCasesGenerator new value: argumentNames! !

!CodeCoverageComparisonTestCaseSlideBuilder methodsFor: 'building' stamp: 'NPM 12/Sep/2026, 4:52:31 pm (UTC)'!
labelFor: values

	| text |
	text := String streamContents: [ :s | values do: [ :each | s nextPutAll: each printString ] separatedBy: [ s nextPutAll: ', ' ] ].
	^ text isEmpty ifTrue: [ 'Run Coverage' ] ifFalse: [ text ]! !

!CodeCoverageComparisonTestCaseSlideBuilder methodsFor: 'building' stamp: 'NPM 12/Sep/2026, 3:41:28 pm (UTC)'!
styleChip: chip for: values

	| fixedExtent |
	fixedExtent := chip morphExtent.
	(selectedTestCases includes: values)
		ifTrue: [ library restyleButton: chip labeled: (self labelFor: values) color: SlideStyle accent labelColor: SlideStyle background ]
		ifFalse: [ library restyleButton: chip labeled: (self labelFor: values) color: SlideStyle background labelColor: SlideStyle textSecondary ].
	chip morphExtent: fixedExtent.
	chip redrawNeeded! !

!CodeCoverageComparisonTestCaseSlideBuilder methodsFor: 'building' stamp: 'NPM 12/Sep/2026, 4:37:54 pm (UTC)'!
value

	| headingLabel barTop barHeight x panel left right bottom gap columnWidth leftColumnLeft rightColumnLeft rightColumnRight captionHeight clearAllButton clearAllFont top rowHeight |

	slide := library blankSlide.
	left := slide interiorOrigin x.
	top := slide interiorOrigin y.
	right := left + slide interiorExtent x.
	bottom := top + slide interiorExtent y.

	argumentNames := ((methodClass >> selector) methodNode arguments collect: [ :each | each key asString ]) asArray.
	testCases := self computeTestCases.
	selectedTestCases := Set new.

	heading ifNotNil: [
		headingLabel := library primaryHeading: heading ].

	rowHeight := headingLabel ifNil: [ 0 ] ifNotNil: [ headingLabel morphHeight ].

	headingLabel ifNotNil: [
		headingLabel morphPosition: left @ top.
		slide addMorph: headingLabel ].

	top := top + rowHeight + (SlideStyle space: 3).
	barTop := top.

	clearAllFont := (FontFamily familyNamed: (Preferences at: #standardButtonFont) familyName) atPointSize: 18.
	clearAllButton := ThesisDefenseButtonMorph model: self action: #clearCoverage actionArgument: nil label: nil.
	library restyleButton: clearAllButton labeled: 'X' font: clearAllFont color: SlideStyle background labelColor: SlideStyle textSecondary.
	testCaseChips := testCases collect: [ :values | self buildChipFor: values ].

	barHeight := (testCaseChips inject: clearAllButton morphHeight into: [ :h :chip | h max: chip morphHeight ]) + ((SlideStyle space: 2) * 2).

	panel := library panelExtent: (right - left) @ barHeight color: SlideStyle surface.
	panel morphPosition: left @ barTop.
	slide addMorph: panel.

	x := left + (SlideStyle space: 2).
	clearAllButton morphPosition: x @ (barTop + ((barHeight - clearAllButton morphHeight) // 2)).
	slide addMorph: clearAllButton.
	x := x + clearAllButton morphWidth + (SlideStyle space: 2).

	testCaseChips do: [ :chip |
		chip morphPosition: x @ (barTop + ((barHeight - chip morphHeight) // 2)).
		slide addMorph: chip.
		x := x + chip morphWidth + (SlideStyle space: 2) ].

	top := barTop + barHeight + (SlideStyle space: 2).

	gap := SlideStyle space: 3.
	columnWidth := (right - left - gap) // 2.
	leftColumnLeft := left.
	rightColumnLeft := leftColumnLeft + columnWidth + gap.
	rightColumnRight := right.

	leftCaptionLabel := library secondaryCaption: leftLabel.
	leftCaptionLabel morphPosition: leftColumnLeft @ top.
	slide addMorph: leftCaptionLabel.

	rightCaptionLabel := library secondaryCaption: rightLabel.
	rightCaptionLabel morphPosition: rightColumnLeft @ top.
	slide addMorph: rightCaptionLabel.

	captionHeight := leftCaptionLabel morphHeight max: rightCaptionLabel morphHeight.
	top := top + captionHeight + (SlideStyle space: 2).

	leftEditorMorph := self codeEditor.
	leftEditorMorph morphExtent: columnWidth @ (bottom - top).
	leftEditorMorph morphPosition: leftColumnLeft @ top.
	slide addMorph: leftEditorMorph.

	rightEditorMorph := self codeEditor.
	rightEditorMorph morphExtent: (rightColumnRight - rightColumnLeft) @ (bottom - top).
	rightEditorMorph morphPosition: rightColumnLeft @ top.
	slide addMorph: rightEditorMorph.

	^ slide! !

!CodeCoverageComparisonTestCaseSlideBuilder methodsFor: 'running' stamp: 'NPM 12/Sep/2026, 4:37:57 pm (UTC)'!
clearCoverage

	selectedTestCases := Set new.
	1 to: testCases size do: [ :i | self styleChip: (testCaseChips at: i) for: (testCases at: i) ].
	super clearCoverage! !

!CodeCoverageComparisonTestCaseSlideBuilder methodsFor: 'running' stamp: 'NPM 12/Sep/2026, 3:21:03 pm (UTC)'!
runCoverage

	executionBlock := [ selectedTestCases do: [ :values | methodClass new perform: selector withArguments: values ] ].
	super runCoverage! !

!CodeCoverageComparisonTestCaseSlideBuilder methodsFor: 'running' stamp: 'NPM 12/Sep/2026, 4:37:56 pm (UTC)'!
toggleTestCase: values

	(selectedTestCases includes: values)
		ifTrue: [ selectedTestCases remove: values ]
		ifFalse: [ selectedTestCases add: values ].
	self styleChip: (testCaseChips at: (testCases indexOf: values)) for: values.
	selectedTestCases isEmpty
		ifTrue: [ self clearCoverage ]
		ifFalse: [ self runCoverage ]! !

!CodeCoverageMethodSlideBuilder methodsFor: 'building' stamp: 'NPM 13/Sep/2026, 1:41:55 pm (UTC)'!
analyzeSecondaryClass

	shouldAnalyzeSecondaryClass := true! !

!CodeCoverageMethodSlideBuilder methodsFor: 'building' stamp: 'NPM 13/Sep/2026, 3:28:35 am (UTC)'!
codeEditorAreaLeft: left top: top right: right bottom: bottom

	| container |

	container := secondaryClass
		ifNil: [ codeEditorMorph ]
		ifNotNil: [
			| row |
			secondaryCodeEditorMorph := self secondaryCodeEditor.
			row := LinearLayoutMorph newRow.
			row gap: (SlideStyle space: 3).
			row addMorph: codeEditorMorph proportionalWidth: 1.
			row addMorph: secondaryCodeEditorMorph proportionalWidth: 1.
			row ].

	container morphExtent: (right - left) @ (bottom - top).
	container morphPosition: left @ top.
	^ container! !

!CodeCoverageMethodSlideBuilder methodsFor: 'building' stamp: 'NPM 5/Sep/2026, 7:27:30 pm (UTC)'!
creatingReportBuildersWith: aReportBuilderFactory

	reportBuilderFactory := aReportBuilderFactory! !

!CodeCoverageMethodSlideBuilder methodsFor: 'building' stamp: 'NPM 5/Sep/2026, 7:17:21 pm (UTC)'!
executing: aBlock

	executionBlock := aBlock! !

!CodeCoverageMethodSlideBuilder methodsFor: 'building' stamp: 'NPM 13/Sep/2026, 3:28:35 am (UTC)'!
secondaryCodeEditor

	^ self codeEditorForClass: secondaryClass selector: secondarySelector! !

!CodeCoverageMethodSlideBuilder methodsFor: 'building' stamp: 'NPM 12/Sep/2026, 12:37:10 pm (UTC)'!
secondaryOn: aClass selector: aSymbol

	secondaryClass := aClass.
	secondarySelector := aSymbol! !

!CodeCoverageMethodSlideBuilder methodsFor: 'building' stamp: 'NPM 14/Sep/2026, 1:55:44 pm (UTC)'!
value

	| barTop barHeight x panel left right bottom clearAllButton clearAllFont top |

	slide := library blankSlide.
	left := slide interiorOrigin x.
	top := slide interiorOrigin y.
	right := left + slide interiorExtent x.
	bottom := top + slide interiorExtent y.

	heading ifNotNil: [
		headingLabel := library primaryHeading: heading ].

	topRowTop := top.
	topRowHeight := headingLabel ifNil: [ 0 ] ifNotNil: [ headingLabel morphHeight ].

	headingLabel ifNotNil: [
		headingLabel morphPosition: left @ top.
		slide addMorph: headingLabel ].

	top := top + topRowHeight + (SlideStyle space: 3).
	barTop := top.

	clearAllFont := (FontFamily familyNamed: (Preferences at: #standardButtonFont) familyName) atPointSize: 18.
	clearAllButton := ThesisDefenseButtonMorph model: self action: #clearCoverage actionArgument: nil label: nil.
	library restyleButton: clearAllButton labeled: 'X' font: clearAllFont color: SlideStyle background labelColor: SlideStyle textSecondary.

	runChip := library
		pillButtonLabeled: 'Run Coverage'
		target: self
		action: #toggleCoverage
		actionArgument: nil
		color: SlideStyle background
		labelColor: SlideStyle textSecondary.

	barHeight := (clearAllButton morphHeight max: runChip morphHeight) + ((SlideStyle space: 2) * 2).

	panel := library panelExtent: (right - left) @ barHeight color: SlideStyle surface.
	panel morphPosition: left @ barTop.
	slide addMorph: panel.

	x := left + (SlideStyle space: 2).
	clearAllButton morphPosition: x @ (barTop + ((barHeight - clearAllButton morphHeight) // 2)).
	slide addMorph: clearAllButton.
	x := x + clearAllButton morphWidth + (SlideStyle space: 2).

	runChip morphPosition: x @ (barTop + ((barHeight - runChip morphHeight) // 2)).
	slide addMorph: runChip.

	top := barTop + barHeight + (SlideStyle space: 3).

	codeEditorMorph := self codeEditor.
	slide addMorph: (self codeEditorAreaLeft: left top: top right: right bottom: bottom).

	^ slide! !

!CodeCoverageMethodSlideBuilder methodsFor: 'running' stamp: 'NPM 13/Sep/2026, 5:01:54 pm (UTC)'!
clearCoverage

	| newEditor |

	coverageBadge ifNotNil: [
		slide removeMorph: coverageBadge.
		coverageBadge := nil ].

	newEditor := self codeEditor.
	newEditor morphExtent: codeEditorMorph morphExtent.
	newEditor morphPosition: codeEditorMorph morphPosition.

	codeEditorMorph owner replaceSubmorph: codeEditorMorph by: newEditor.
	codeEditorMorph := newEditor.

	secondaryCodeEditorMorph ifNotNil: [ | newEditor2 |
		newEditor2 := self secondaryCodeEditor.
		newEditor2 morphExtent: secondaryCodeEditorMorph morphExtent.
		newEditor2 morphPosition: secondaryCodeEditorMorph morphPosition.

		secondaryCodeEditorMorph owner replaceSubmorph: secondaryCodeEditorMorph by: newEditor2.
		secondaryCodeEditorMorph := newEditor2.
	].

	coverageActive := false.
	runChip ifNotNil: [
		library restyleButton: runChip labeled: 'Run Coverage' color: SlideStyle background labelColor: SlideStyle textSecondary ]! !

!CodeCoverageMethodSlideBuilder methodsFor: 'running' stamp: 'NPM 13/Sep/2026, 5:01:51 pm (UTC)'!
runCoverage

	| methodReport |

	methodReport := self runCoverageAnalyzingWith: executionBlock.

	coverageActive := true.
	library restyleButton: runChip labeled: 'Run Coverage' color: SlideStyle accent labelColor: SlideStyle background.

	self updateBadgeFor: methodReport coverageRatio! !

!CodeCoverageMethodSlideBuilder methodsFor: 'running' stamp: 'NPM 13/Sep/2026, 1:41:58 pm (UTC)'!
runCoverageAnalyzingWith: aBlock

	| compiledMethod analyzer report methodsToAnalyze |

	compiledMethod := methodClass >> selector.
	methodsToAnalyze := OrderedCollection with: compiledMethod.
	shouldAnalyzeSecondaryClass ifTrue: [ methodsToAnalyze add: secondaryClass >> secondarySelector ].

	analyzer := CodeCoverageAnalyzer
		toAnalyzeAll: methodsToAnalyze
		creatingReportBuildersWith: reportBuilderFactory.
	analyzer value: aBlock.
	report := analyzer report.

	codeEditorMorph := self showCoverage: report forClass: methodClass selector: selector in: codeEditorMorph.
	shouldAnalyzeSecondaryClass ifTrue: [
		secondaryCodeEditorMorph := self showCoverage: report forClass: secondaryClass selector: secondarySelector in: secondaryCodeEditorMorph ].

	^ report reportForCompiledMethod: compiledMethod! !

!CodeCoverageMethodSlideBuilder methodsFor: 'running' stamp: 'NPM 13/Sep/2026, 1:25:28 pm (UTC)'!
showCoverage: report forClass: aClass selector: aSelector in: aCodeEditor

	| browser newEditor |
	browser := CodeCoverageAnalyzerBrowser displayingCodeCoverageResultsFrom: report.
	browser setSelectedSystemCategory: aClass category.
	browser selectClass: aClass.
	browser selectedMessageName: aSelector.

	newEditor := library codeEditorOn: browser.
	
	newEditor morphExtent: aCodeEditor morphExtent.
	newEditor morphPosition: aCodeEditor morphPosition.

	aCodeEditor owner replaceSubmorph: aCodeEditor by: newEditor.
	^ newEditor! !

!CodeCoverageMethodSlideBuilder methodsFor: 'running' stamp: 'NPM 14/Sep/2026, 2:21:13 pm (UTC)'!
updateBadgeFor: aCoverageRatio

	| text |

	text := (aCoverageRatio * 100) rounded printString , '%'.

	coverageBadge
		ifNil: [
			coverageBadge := library headingBadgeLabeled: text.
			slide addMorph: coverageBadge ]
		ifNotNil: [ coverageBadge contents: text ].

	coverageBadge morphPosition:
		(headingLabel morphPosition x + headingLabel morphWidth + (SlideStyle space: 3))
		@ (headingLabel morphPosition y + ((headingLabel morphHeight - coverageBadge morphHeight) // 2))! !

!CodeCoverageMethodSlideBuilder methodsFor: 'initialization' stamp: 'NPM 13/Sep/2026, 5:01:42 pm (UTC)'!
initialize

	super initialize.

	reportBuilderFactory := DecisionConditionCoverageReportBuilder.
	shouldAnalyzeSecondaryClass := false.
	coverageActive := false.! !

!CodeCoverageMethodSlideBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 5:01:50 pm (UTC)'!
toggleCoverage

	coverageActive
		ifTrue: [ self clearCoverage ]
		ifFalse: [ self runCoverage ]! !

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

!CodeCoverageTestCaseSlideBuilder methodsFor: 'initialization' stamp: 'NPM 13/Sep/2026, 1:36:18 pm (UTC)'!
initialize

	super initialize.
	argumentNames := #().
	testCases := #().
	testCaseChips := OrderedCollection new.
	selectedTestCases := Set new.
	testCasesGenerator := BooleanTestCasesGenerator new.! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'building' stamp: 'NPM 12/Sep/2026, 3:41:23 pm (UTC)'!
buildChipFor: values

	^ library
		pillButtonLabeled: (self labelFor: values)
		target: self
		action: #toggleTestCase:
		actionArgument: values
		color: SlideStyle background
		labelColor: SlideStyle textSecondary! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'building' stamp: 'NPM 12/Sep/2026, 10:38:32 pm (UTC)'!
computeTestCases

	^ testCasesGenerator value: argumentNames! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'building' stamp: 'NPM 12/Sep/2026, 4:52:29 pm (UTC)'!
labelFor: values

	| text |
	text := String streamContents: [ :s | values do: [ :each | s nextPutAll: each printString ] separatedBy: [ s nextPutAll: ', ' ] ].
	^ text isEmpty ifTrue: [ 'Run Coverage' ] ifFalse: [ text ]! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'building' stamp: 'NPM 12/Sep/2026, 3:41:25 pm (UTC)'!
styleChip: chip for: values

	| fixedExtent |
	fixedExtent := chip morphExtent.
	(selectedTestCases includes: values)
		ifTrue: [ library restyleButton: chip labeled: (self labelFor: values) color: SlideStyle accent labelColor: SlideStyle background ]
		ifFalse: [ library restyleButton: chip labeled: (self labelFor: values) color: SlideStyle background labelColor: SlideStyle textSecondary ].
	chip morphExtent: fixedExtent.
	chip redrawNeeded! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'building' stamp: 'NPM 14/Sep/2026, 1:55:50 pm (UTC)'!
value

	| barTop barHeight x panel left right bottom clearAllButton clearAllFont top |

	slide := library blankSlide.
	left := slide interiorOrigin x.
	top := slide interiorOrigin y.
	right := left + slide interiorExtent x.
	bottom := top + slide interiorExtent y.

	argumentNames := ((methodClass >> selector) methodNode arguments collect: [ :each | each key asString ]) asArray.
	testCases := self computeTestCases.
	selectedTestCases := Set new.

	heading ifNotNil: [
		headingLabel := library primaryHeading: heading ].

	topRowTop := top.
	topRowHeight := headingLabel ifNil: [ 0 ] ifNotNil: [ headingLabel morphHeight ].

	headingLabel ifNotNil: [
		headingLabel morphPosition: left @ top.
		slide addMorph: headingLabel ].

	top := top + topRowHeight + (SlideStyle space: 3).
	barTop := top.

	clearAllFont := (FontFamily familyNamed: (Preferences at: #standardButtonFont) familyName) atPointSize: 18.
	clearAllButton := ThesisDefenseButtonMorph model: self action: #clearCoverage actionArgument: nil label: nil.
	library restyleButton: clearAllButton labeled: 'X' font: clearAllFont color: SlideStyle background labelColor: SlideStyle textSecondary.
	testCaseChips := testCases collect: [ :values | self buildChipFor: values ].

	barHeight := (testCaseChips inject: clearAllButton morphHeight into: [ :h :chip | h max: chip morphHeight ]) + ((SlideStyle space: 2) * 2).

	panel := library panelExtent: (right - left) @ barHeight color: SlideStyle surface.
	panel morphPosition: left @ barTop.
	slide addMorph: panel.

	x := left + (SlideStyle space: 2).
	clearAllButton morphPosition: x @ (barTop + ((barHeight - clearAllButton morphHeight) // 2)).
	slide addMorph: clearAllButton.
	x := x + clearAllButton morphWidth + (SlideStyle space: 2).

	testCaseChips do: [ :chip |
		chip morphPosition: x @ (barTop + ((barHeight - chip morphHeight) // 2)).
		slide addMorph: chip.
		x := x + chip morphWidth + (SlideStyle space: 2) ].

	top := barTop + barHeight + (SlideStyle space: 3).

	codeEditorMorph := self codeEditor.
	slide addMorph: (self codeEditorAreaLeft: left top: top right: right bottom: bottom).

	^ slide! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'running' stamp: 'NPM 12/Sep/2026, 4:37:40 pm (UTC)'!
clearCoverage

	selectedTestCases := Set new.
	1 to: testCases size do: [ :i | self styleChip: (testCaseChips at: i) for: (testCases at: i) ].
	super clearCoverage! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'running' stamp: 'NPM 13/Sep/2026, 1:36:17 pm (UTC)'!
runCoverage

	| methodReport |

	methodReport := self runCoverageAnalyzingWith: [
		selectedTestCases do: [ :values | methodClass new perform: selector withArguments: values ] ].

	self updateBadgeFor: methodReport coverageRatio! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'running' stamp: 'NPM 12/Sep/2026, 4:37:35 pm (UTC)'!
toggleTestCase: values

	(selectedTestCases includes: values)
		ifTrue: [ selectedTestCases remove: values ]
		ifFalse: [ selectedTestCases add: values ].
	self styleChip: (testCaseChips at: (testCases indexOf: values)) for: values.
	selectedTestCases isEmpty
		ifTrue: [ self clearCoverage ]
		ifFalse: [ self runCoverage ]! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'running' stamp: 'NPM 14/Sep/2026, 2:21:15 pm (UTC)'!
updateBadgeFor: aCoverageRatio

	| text |

	text := (aCoverageRatio * 100) rounded printString , '%'.

	coverageBadge
		ifNil: [
			coverageBadge := library headingBadgeLabeled: text.
			slide addMorph: coverageBadge ]
		ifNotNil: [ coverageBadge contents: text ].

	coverageBadge morphPosition:
		(headingLabel morphPosition x + headingLabel morphWidth + (SlideStyle space: 3))
		@ (headingLabel morphPosition y + ((headingLabel morphHeight - coverageBadge morphHeight) // 2))! !

!CodeCoverageTestCaseSlideBuilder methodsFor: 'as yet unclassified' stamp: 'NPM 12/Sep/2026, 10:41:48 pm (UTC)'!
generateTestsCasesWith: aTestCasesGenerator 
	
	testCasesGenerator := aTestCasesGenerator! !

!CodeCoverageTestCaseSlideBuilder class methodsFor: 'instance creation' stamp: 'NPM 5/Sep/2026, 7:52:34 pm (UTC)'!
on: aClass selector: aSymbol heading: aString creatingReportBuildersWith: aReportBuilderFactory

	^ self new
		setClass: aClass selector: aSymbol;
		heading: aString;
		creatingReportBuildersWith: aReportBuilderFactory;
		yourself! !

!PipelineInstrumentSlideBuilder methodsFor: 'building' stamp: 'NPM 13/Sep/2026, 7:28:49 pm (UTC)'!
instrumentedCodeEditor

	| provider |
	provider := InstrumentedSourceProvider new
		methodClass: methodClass;
		source: self instrumentedSource;
		yourself.
	^ library codeEditorOn: provider! !

!PipelineInstrumentSlideBuilder methodsFor: 'building' stamp: 'NPM 13/Sep/2026, 5:19:30 pm (UTC)'!
instrumentedSource

	| generator |
	generator := CodeCoverageSourceCodeGenerator for: (methodClass >> selector).
	generator value.
	^ generator tracedSourceCode! !

!PipelineInstrumentSlideBuilder methodsFor: 'building' stamp: 'NPM 13/Sep/2026, 7:28:54 pm (UTC)'!
value

	| left top right bottom gap columnWidth headingLabel refreshButton rowHeight |

	slide := library blankSlide.
	left := slide interiorOrigin x.
	top := slide interiorOrigin y.
	right := left + slide interiorExtent x.
	bottom := top + slide interiorExtent y.

	heading ifNotNil: [
		headingLabel := library primaryHeading: heading ].

	refreshButton := library
		pillButtonLabeled: 'Refresh'
		target: self
		action: #refresh
		actionArgument: nil
		color: SlideStyle surface
		labelColor: SlideStyle textSecondary.

	rowHeight := (headingLabel ifNil: [ 0 ] ifNotNil: [ headingLabel morphHeight ]) max: refreshButton morphHeight.

	headingLabel ifNotNil: [
		headingLabel morphPosition: left @ (top + ((rowHeight - headingLabel morphHeight) // 2)).
		slide addMorph: headingLabel ].

	refreshButton morphPosition: (right - refreshButton morphWidth) @ (top + ((rowHeight - refreshButton morphHeight) // 2)).
	slide addMorph: refreshButton.

	top := top + rowHeight + (SlideStyle space: 3).

	gap := SlideStyle space: 3.
	columnWidth := (right - left - gap) // 2.

	leftEditorMorph := self codeEditor.
	leftEditorMorph morphExtent: columnWidth @ (bottom - top).
	leftEditorMorph morphPosition: left @ top.
	slide addMorph: leftEditorMorph.

	rightEditorMorph := self instrumentedCodeEditor.
	rightEditorMorph morphExtent: columnWidth @ (bottom - top).
	rightEditorMorph morphPosition: (left + columnWidth + gap) @ top.
	slide addMorph: rightEditorMorph.

	^ slide! !

!PipelineInstrumentSlideBuilder methodsFor: 'running' stamp: 'NPM 13/Sep/2026, 7:28:57 pm (UTC)'!
refresh

	"Re-read the method's current source and regenerate the instrumented
	source from it, in case either was edited since this slide was built."

	| newLeftEditor newRightEditor |

	newLeftEditor := self codeEditor.
	newLeftEditor morphExtent: leftEditorMorph morphExtent.
	newLeftEditor morphPosition: leftEditorMorph morphPosition.
	leftEditorMorph owner replaceSubmorph: leftEditorMorph by: newLeftEditor.
	leftEditorMorph := newLeftEditor.

	newRightEditor := self instrumentedCodeEditor.
	newRightEditor morphExtent: rightEditorMorph morphExtent.
	newRightEditor morphPosition: rightEditorMorph morphPosition.
	rightEditorMorph owner replaceSubmorph: rightEditorMorph by: newRightEditor.
	rightEditorMorph := newRightEditor! !

!PipelineRoadmapSlideBuilder methodsFor: 'initialization' stamp: 'NPM 13/Sep/2026, 5:19:20 pm (UTC)'!
initialize

	super initialize.

	library := ThesisDefenseMorphLibrary new! !

!PipelineRoadmapSlideBuilder methodsFor: 'building' stamp: 'NPM 13/Sep/2026, 5:23:50 pm (UTC)'!
labelFor: aStepName

	"Use the same font (weight and size) for every label, current or not, so that
	which step is current never changes any label's width/height and therefore
	never shifts the row's layout from slide to slide. Only color/opacity differs."

	| label |
	label := library heading: aStepName.
	label color: (aStepName = currentStep
		ifTrue: [ SlideStyle textPrimary ]
		ifFalse: [ SlideStyle textSecondary alpha: 0.35 ]).
	^ label! !

!PipelineRoadmapSlideBuilder methodsFor: 'building' stamp: 'NPM 13/Sep/2026, 5:19:21 pm (UTC)'!
setCurrentStep: aString

	currentStep := aString! !

!PipelineRoadmapSlideBuilder methodsFor: 'building' stamp: 'NPM 13/Sep/2026, 5:19:25 pm (UTC)'!
value

	| slide row centered |
	slide := library blankSlide.

	row := LinearLayoutMorph newRow.
	row separation: (SlideStyle space: 4).
	row color: Color transparent.
	centered := LayoutSizeSpec keepMorphExtent offAxisEdgeWeight: #center.
	self class steps do: [ :each |
		row addMorph: (self labelFor: each) layoutSpec: centered ].
	row morphExtent: row minimumExtent.

	slide addMorph: row.
	library centerMorph: row at: SlideStyle canvasExtent // 2.

	^ slide! !

!PipelineRoadmapSlideBuilder class methodsFor: 'accessing' stamp: 'NPM 13/Sep/2026, 5:19:18 pm (UTC)'!
steps

	^ #('Alcance' 'Instrumentar' 'Ejercitar' 'Notificar' 'Detener')! !

!PipelineRoadmapSlideBuilder class methodsFor: 'instance creation' stamp: 'NPM 13/Sep/2026, 5:19:19 pm (UTC)'!
on: aStepName

	^ self new
		setCurrentStep: aStepName;
		yourself! !

!PolaroidSlideBuilder methodsFor: 'building' stamp: 'NPM 13/Sep/2026, 11:15:38 pm (UTC)'!
caption: aStringOrNil

	caption := aStringOrNil.! !

!PolaroidSlideBuilder methodsFor: 'building' stamp: 'NPM 11/Sep/2026, 6:25:53 pm (UTC)'!
rotationDegrees: aNumber

	rotationDegrees := aNumber.! !

!PolaroidSlideBuilder methodsFor: 'building' stamp: 'NPM 11/Sep/2026, 6:25:52 pm (UTC)'!
setFilename: aString

	filename := aString.! !

!PolaroidSlideBuilder methodsFor: 'building' stamp: 'NPM 13/Sep/2026, 11:15:39 pm (UTC)'!
value

	| slide polaroid |

	slide := library blankSlide.
	polaroid := library
		polaroidFor: filename
		photoWidth: self photoWidth
		height: self photoHeight
		rotationDegrees: rotationDegrees
		caption: caption.
	slide addMorph: polaroid.
	library centerMorph: polaroid at: SlideStyle canvasExtent // 2.

	^ slide! !

!PolaroidSlideBuilder methodsFor: 'initialization' stamp: 'NPM 12/Sep/2026, 12:25:58 am (UTC)'!
initialize

	super initialize.

	library := ThesisDefenseMorphLibrary new.
	"Avoid small nonzero tilts: at this render's antialiasing, a shallow angle
	like -1 to -4 degrees produces long, clearly-not-quite-straight staircase
	steps on the rotated seam - more visible than either a flat photo or a
	more pronounced tilt."
	rotationDegrees := #(0 -5 -6 -7 -8) atRandom.
	photoWidth := 1200.
	photoHeight := 675.! !

!PolaroidSlideBuilder methodsFor: 'accessing' stamp: 'NPM 12/Sep/2026, 12:26:00 am (UTC)'!
photoHeight

	^ photoHeight! !

!PolaroidSlideBuilder methodsFor: 'accessing' stamp: 'NPM 12/Sep/2026, 12:25:59 am (UTC)'!
photoWidth

	^ photoWidth! !

!PolaroidSlideBuilder methodsFor: 'accessing' stamp: 'NPM 12/Sep/2026, 12:26:01 am (UTC)'!
photoWidth: aWidth height: aHeight

	photoWidth := aWidth.
	photoHeight := aHeight.! !

!PolaroidSlideBuilder class methodsFor: 'instance creation' stamp: 'NPM 11/Sep/2026, 6:26:02 pm (UTC)'!
on: aFilename

	^ self new
		setFilename: aFilename;
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

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 11:15:42 pm (UTC)'!
caveatFontFamily

	^ FontFamily familyNamed: 'Caveat'! !

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 12/Sep/2026, 8:25:55 pm (UTC)'!
comfortaaFontFamily

	^ FontFamily familyNamed: 'Comfortaa'! !

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 12/Sep/2026, 8:29:05 pm (UTC)'!
fontFamily

	^ self comfortaaFontFamily
		ifNil: [
			self
				loadComfortaaFont;
				comfortaaFontFamily ]! !

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:52:23 pm (UTC)'!
heading: contents

	^ LabelMorph
		contents: contents
		font: self headingFont! !

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:52:44 pm (UTC)'!
headingFont

	^ (self fontFamily atPointSize: 42) emphasized: 1! !

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 11/Sep/2026, 6:54:20 pm (UTC)'!
imageNamed: filename

	| fileEntry mtime cached form |
	fileEntry := self class imagesFolder // filename.
	mtime := fileEntry modificationTime.
	cached := self class imageCache at: filename ifAbsent: [ nil ].
	form := (cached notNil and: [ cached key = mtime ])
		ifTrue: [ cached value ]
		ifFalse: [
			| decoded |
			decoded := Form fromFileNamed: fileEntry.
			self class imageCache at: filename put: mtime -> decoded.
			decoded ].
	^ ImageMorph newWith: form! !

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 11:16:47 pm (UTC)'!
loadCaveatFont

	TrueTypeFontFamily readTrueTypeFontEntry: self class fontsFolder // 'Caveat/static/Caveat-Regular.ttf'! !

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 12/Sep/2026, 8:29:05 pm (UTC)'!
loadComfortaaFont
	
	TrueTypeFontFamily readTrueTypeFontEntry: self class fontsFolder // 'Comfortaa/static/Comfortaa-Regular.ttf'! !

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 12/Sep/2026, 3:58:50 pm (UTC)'!
restyleButton: aButton labeled: aString font: aFont color: bgColor labelColor: fgColor

	aButton label: aString font: aFont.
	aButton morphExtent: aButton morphWidth + 32 @ (aButton morphHeight + 16).
	aButton labelColor: fgColor.
	aButton color: bgColor! !

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

!ThesisDefenseMorphLibrary methodsFor: 'widgets' stamp: 'NPM 14/Sep/2026, 1:48:03 pm (UTC)'!
headingBadgeLabeled: aString

	^ (LabelMorph contents: aString font: self headingBadgeFont) color: SlideStyle accent2! !

!ThesisDefenseMorphLibrary methodsFor: 'widgets' stamp: 'NPM 12/Sep/2026, 3:45:08 pm (UTC)'!
panelExtent: anExtent color: aColor

	^ ThesisDefensePanelMorph new
		color: aColor;
		morphExtent: anExtent;
		yourself! !

!ThesisDefenseMorphLibrary methodsFor: 'widgets' stamp: 'NPM 6/Sep/2026, 12:54:43 am (UTC)'!
pillButtonLabeled: aString target: aTarget action: aSelector actionArgument: anObject color: bgColor labelColor: fgColor

	| button |
	button := ThesisDefenseButtonMorph model: aTarget action: aSelector actionArgument: anObject label: nil.
	self restyleButton: button labeled: aString color: bgColor labelColor: fgColor.
	^ button! !

!ThesisDefenseMorphLibrary methodsFor: 'widgets' stamp: 'NPM 12/Sep/2026, 3:58:49 pm (UTC)'!
restyleButton: aButton labeled: aString color: bgColor labelColor: fgColor

	self restyleButton: aButton labeled: aString font: self captionFont color: bgColor labelColor: fgColor! !

!ThesisDefenseMorphLibrary methodsFor: 'widgets' stamp: 'NPM 6/Sep/2026, 1:35:54 am (UTC)'!
spacer: aStepIndex

	^ ColoredBoxMorph new color: Color transparent; morphExtent: 0 @ (SlideStyle space: aStepIndex); yourself! !

!ThesisDefenseMorphLibrary methodsFor: 'text' stamp: 'NPM 14/Sep/2026, 1:48:02 pm (UTC)'!
headingBadgeFont

	^ self fontFamily atPointSize: 42! !

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

!ThesisDefenseMorphLibrary methodsFor: 'polaroid' stamp: 'NPM 13/Sep/2026, 2:22:56 pm (UTC)'!
centerMorph: aMorph at: aPoint

	| bounds delta |
	bounds := aMorph findFullBoundsInOwner.
	delta := aPoint - (bounds origin + (bounds extent // 2)).
	aMorph morphPosition: aMorph morphPosition + delta.! !

!ThesisDefenseMorphLibrary methodsFor: 'polaroid' stamp: 'NPM 13/Sep/2026, 2:23:07 pm (UTC)'!
polaroidBottomPadding

	^ 140! !

!ThesisDefenseMorphLibrary methodsFor: 'polaroid' stamp: 'NPM 13/Sep/2026, 11:15:46 pm (UTC)'!
polaroidCaptionColor

	^ Color fromHexString: '#3A3229'! !

!ThesisDefenseMorphLibrary methodsFor: 'polaroid' stamp: 'NPM 13/Sep/2026, 11:15:45 pm (UTC)'!
polaroidCaptionFont

	^ self polaroidCaptionFontFamily atPointSize: 36! !

!ThesisDefenseMorphLibrary methodsFor: 'polaroid' stamp: 'NPM 13/Sep/2026, 11:15:45 pm (UTC)'!
polaroidCaptionFontFamily

	^ self caveatFontFamily
		ifNil: [
			self
				loadCaveatFont;
				caveatFontFamily ]! !

!ThesisDefenseMorphLibrary methodsFor: 'polaroid' stamp: 'NPM 13/Sep/2026, 11:15:50 pm (UTC)'!
polaroidCaptionMorph: aString cardWidth: cardWidth innerBottom: innerBottom cardHeight: cardHeight

	| label |
	label := LabelMorph
		contents: aString
		font: self polaroidCaptionFont.
	label color: self polaroidCaptionColor.
	label morphPosition:
		((cardWidth - label morphWidth) // 2)
		@ (innerBottom + ((cardHeight - innerBottom - label morphHeight) // 2)).
	^ label! !

!ThesisDefenseMorphLibrary methodsFor: 'polaroid' stamp: 'NPM 13/Sep/2026, 11:15:59 pm (UTC)'!
polaroidFor: aFilename photoWidth: pw height: ph rotationDegrees: rotationDegrees caption: aCaptionOrNil

	| sidePadding bottomPadding overlap cardWidth cardHeight group card image shadow innerRight innerBottom photoWindow localCenter |

	sidePadding := self polaroidSidePadding.
	bottomPadding := self polaroidBottomPadding.
	overlap := self polaroidFrameOverlap.

	cardWidth := pw + (sidePadding * 2).
	cardHeight := ph + sidePadding + bottomPadding.
	innerRight := sidePadding + pw.
	innerBottom := sidePadding + ph.
	localCenter := cardWidth // 2 @ (cardHeight // 2).

	group := ColoredBoxMorph new
		color: Color transparent;
		morphExtent: cardWidth @ cardHeight;
		yourself.

	shadow := self polaroidShadowMorphFor: cardWidth @ cardHeight.
	shadow morphPosition: localCenter.
	group addMorph: shadow.
	shadow rotationDegrees: rotationDegrees.
	self centerMorph: shadow at: localCenter.
	shadow morphPosition: shadow morphPosition + self polaroidShadowOffset.

	card := ColoredBoxMorph new
		color: self polaroidPaperColor;
		morphExtent: cardWidth @ cardHeight;
		yourself.

	photoWindow := ClippingBoxMorph new
		morphExtent: (pw + (overlap * 2)) @ (ph + (overlap * 2));
		morphPosition: (sidePadding - overlap) @ (sidePadding - overlap);
		yourself.
	photoWindow addMorph: (ColoredBoxMorph new
		color: Color white;
		morphExtent: photoWindow morphExtent;
		morphPosition: 0 @ 0;
		yourself).
	image := self imageNamed: aFilename.
	self scaleToCover: image into: (0 @ 0 extent: photoWindow morphExtent).
	photoWindow addMorph: image.
	card addMorph: photoWindow.

	"Paper strips on top of the photo hide its jagged rotated edge under a clean antialiased vector edge."
	card addMorph: (self polaroidPaperStripExtent: cardWidth @ sidePadding position: 0 @ 0).
	card addMorph: (self polaroidPaperStripExtent: cardWidth @ (cardHeight - innerBottom) position: 0 @ innerBottom).
	card addMorph: (self polaroidPaperStripExtent: sidePadding @ ph position: 0 @ sidePadding).
	card addMorph: (self polaroidPaperStripExtent: (cardWidth - innerRight) @ ph position: innerRight @ sidePadding).

	aCaptionOrNil ifNotNil: [
		card addMorph: (self
			polaroidCaptionMorph: aCaptionOrNil
			cardWidth: cardWidth
			innerBottom: innerBottom
			cardHeight: cardHeight) ].

	card morphPosition: (localCenter x - (cardWidth // 2)) @ (localCenter y - (cardHeight // 2)).
	group addMorph: card.
	card rotationDegrees: rotationDegrees.
	self centerMorph: card at: localCenter.

	^ group! !

!ThesisDefenseMorphLibrary methodsFor: 'polaroid' stamp: 'NPM 13/Sep/2026, 2:23:08 pm (UTC)'!
polaroidFrameOverlap

	^ 2! !

!ThesisDefenseMorphLibrary methodsFor: 'polaroid' stamp: 'NPM 13/Sep/2026, 2:23:06 pm (UTC)'!
polaroidPaperColor

	^ Color fromHexString: '#F5F1E8'! !

!ThesisDefenseMorphLibrary methodsFor: 'polaroid' stamp: 'NPM 13/Sep/2026, 2:23:00 pm (UTC)'!
polaroidPaperStripExtent: anExtent position: aPosition

	^ ColoredBoxMorph new
		color: self polaroidPaperColor;
		morphExtent: anExtent;
		morphPosition: aPosition;
		yourself! !

!ThesisDefenseMorphLibrary methodsFor: 'polaroid' stamp: 'NPM 13/Sep/2026, 2:31:17 pm (UTC)'!
polaroidShadowMorphFor: cardExtent

	| feather sampleScale fullExtent smallExtent core smallForm shadowMorph maxDarken |

	feather := 22.
	sampleScale := 3.
	maxDarken := 0.14.
	fullExtent := cardExtent + (feather * 2).
	smallExtent := (fullExtent // sampleScale) max: 2 @ 2.
	core := (cardExtent // 2) / sampleScale.

	smallForm := Form extent: smallExtent depth: 32.
	smallForm fillFromXYColorBlock: [ :xRel :yRel |
		| x y dx dy dist t smoothT darken |
		x := xRel * (smallExtent x - 1).
		y := yRel * (smallExtent y - 1).
		dx := ((x - (smallExtent x / 2)) abs - core x) max: 0.
		dy := ((y - (smallExtent y / 2)) abs - core y) max: 0.
		dist := ((dx * dx) + (dy * dy)) sqrt.
		t := (dist / (feather / sampleScale)) min: 1.0.
		smoothT := t * t * (3.0 - (2.0 * t)).
		darken := maxDarken * (1.0 - smoothT).
		Color black alpha: darken ].

	shadowMorph := ImageMorph newWith: smallForm.
	shadowMorph scaleToFitInto: (0 @ 0 extent: fullExtent).
	^ shadowMorph! !

!ThesisDefenseMorphLibrary methodsFor: 'polaroid' stamp: 'NPM 13/Sep/2026, 2:23:09 pm (UTC)'!
polaroidShadowOffset

	^ 3 @ 4! !

!ThesisDefenseMorphLibrary methodsFor: 'polaroid' stamp: 'NPM 13/Sep/2026, 2:23:07 pm (UTC)'!
polaroidSidePadding

	^ 32! !

!ThesisDefenseMorphLibrary methodsFor: 'polaroid' stamp: 'NPM 13/Sep/2026, 2:22:59 pm (UTC)'!
scaleToCover: aMorph into: aRectangle

	"Like PlacedMorph>>scaleToFitInto:, but scales so aMorph fully covers aRectangle
	(cropping the overflow on whichever axis doesn't match) instead of fitting entirely
	inside it. Needed because photos aren't always exactly 16:9: a contain-fit leaves a
	gap on one axis, which for this polaroid frame means the photo's own raw edge is
	left exposed instead of tucked under a paper strip."

	| currentBounds scale |
	currentBounds := aMorph findFullBoundsInOwner.
	scale := (aRectangle width / currentBounds width) max: (aRectangle height / currentBounds height).
	scale := scale asFloat.
	aMorph scaleBy: scale.

	currentBounds := aMorph findFullBoundsInOwner.
	aMorph morphPosition: aRectangle origin - (currentBounds origin - aMorph morphPosition) + (aRectangle extent - currentBounds extent // 2).! !

!ThesisDefenseMorphLibrary class methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:40:30 pm (UTC)'!
fontsFolder
	
	^ (CodePackage installedPackages at: #ThesisDefense) fullFileName asFileEntry parent / 'thesis' / 'fonts'.! !

!ThesisDefenseMorphLibrary class methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:45:53 pm (UTC)'!
imagesFolder
	
	^ (CodePackage installedPackages at: #ThesisDefense) fullFileName asFileEntry parent / 'thesis' / 'images'.! !

!ThesisDefenseMorphLibrary class methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:40:19 pm (UTC)'!
loadFonts

	TrueTypeFontFamily readAllTrueTypeFontsIn: self fontsFolder.! !

!ThesisDefenseMorphLibrary class methodsFor: 'image cache' stamp: 'NPM 11/Sep/2026, 6:54:17 pm (UTC)'!
flushImageCache

	ImageCache := nil! !

!ThesisDefenseMorphLibrary class methodsFor: 'image cache' stamp: 'NPM 11/Sep/2026, 6:54:16 pm (UTC)'!
imageCache

	^ ImageCache ifNil: [ ImageCache := Dictionary new ]! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 5:19:40 pm (UTC)'!
alcanceSlide

	^ (PipelineRoadmapSlideBuilder on: 'Alcance') value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 11:20:34 pm (UTC)'!
booleSlide
	
	 ^ (PolaroidSlideBuilder on: 'george-boole.png')
		photoWidth: 382
		height: 680;
		rotationDegrees: -8;
		caption: 'George Boole';
		value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 12/Sep/2026, 12:58:47 pm (UTC)'!
branchCoverageSlide

	^ self branchCoverageSlideBuilder value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 14/Sep/2026, 12:48:31 pm (UTC)'!
branchCoverageSlide2

	^ (CodeCoverageTestCaseSlideBuilder
		on: CodeCoverageExamples
		selector: #multipleConditionsExample:and:
		heading: 'Branch Coverage'
		creatingReportBuildersWith: DecisionCoverageReportBuilder)
		value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 14/Sep/2026, 12:44:27 pm (UTC)'!
branchCoverageSlideBuilder

	^ CodeCoverageTestCaseSlideBuilder
		on: CodeCoverageExamples
		selector: #singleDecisionExample:
		heading: 'Branch Coverage'
		creatingReportBuildersWith: DecisionCoverageReportBuilder! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 11/Sep/2026, 10:55:26 pm (UTC)'!
codeCoverageDefinitionSlide

	^ (PolaroidSlideBuilder on: 'code-coverage-definition.png')
		rotationDegrees: -5;
		value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 11:22:27 pm (UTC)'!
coverageToolLogosSlide

	| library slide photoExtent gap cardWidth totalWidth leftMargin centerY specs |

	library := ThesisDefenseMorphLibrary new.
	slide := library blankSlide.

	photoExtent := 260 @ 260.
	gap := 60.
	cardWidth := photoExtent x + (library polaroidSidePadding * 2).
	totalWidth := (cardWidth * 4) + (gap * 3).
	leftMargin := (SlideStyle canvasExtent x - totalWidth) // 2.
	centerY := SlideStyle canvasExtent y // 2.

	specs := {
		{ 'squeak-logo.png'. -6. 'Squeak' }.
		{ 'pharo-logo.png'. 4. 'Pharo' }.
		{ 'instantiations-logo.png'. -3. 'VAST' }.
		{ 'haskell-logo.png'. 7. 'Haskell' }.
	}.

	specs doWithIndex: [ :spec :i |
		| polaroid centerX |
		polaroid := library
			polaroidFor: spec first
			photoWidth: photoExtent x
			height: photoExtent y
			rotationDegrees: spec second
			caption: spec last.
		slide addMorph: polaroid.
		centerX := leftMargin + ((i - 1) * (cardWidth + gap)) + (cardWidth // 2).
		library centerMorph: polaroid at: centerX @ centerY ].

	^ slide! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 14/Sep/2026, 12:49:43 pm (UTC)'!
decisionConditionCoverageSlide

	^ (CodeCoverageTestCaseSlideBuilder
		on: CodeCoverageExamples
		selector: #multipleConditionsExample:and:
		heading: 'Decision/Condition Coverage'
		creatingReportBuildersWith: BasicDecisionConditionCoverageReportBuilder) value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 12/Sep/2026, 9:08:49 pm (UTC)'!
decisionConditionVsBooleanCoverageSlide

	^ (CodeCoverageComparisonTestCaseSlideBuilder
		on: CodeCoverageExamples
		selector: #OBCExample1:and:
		heading: 'Decision/Condition vs OBC')
		"Using StatementCoverageReportBuilder here instead of a real Decision/Condition
		implementation. This method has no decisions at all, so D/C's only requirement
		(each atomic condition inside a decision evaluated to true and false) is vacuously
		satisfied - there's nothing for it to check. What's left is exactly what Statement
		Coverage already reports (executed or not), so the two coincide by degeneration,
		not by approximation. Not faking the result, just skipping the unused machinery."
		leftLabeled: 'Decision/Condition Coverage' creatingReportBuildersWith: StatementCoverageReportBuilder;
		rightLabeled: 'OBC Coverage' creatingReportBuildersWith: DecisionConditionCoverageReportBuilder;
		value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 12/Sep/2026, 9:51:06 pm (UTC)'!
decisionConditionVsBooleanCoverageSlide2

	^ (CodeCoverageComparisonTestCaseSlideBuilder
		on: CodeCoverageExamples
		selector: #OBCExample2:and:
		heading: 'Decision/Condition vs OBC')
		"Using DecisionCoverageReportBuilder here instead of a real Decision/Condition
		implementation. This method has once decisions but no conditions, so D/C's in this case
		is exactly DecisionCoverageReportBuilder"
		leftLabeled: 'Decision/Condition Coverage' creatingReportBuildersWith: DecisionCoverageReportBuilder;
		rightLabeled: 'OBC Coverage' creatingReportBuildersWith: DecisionConditionCoverageReportBuilder;
		value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 1:42:02 pm (UTC)'!
decisionConditionVsBooleanCoverageSlide3

	^ (CodeCoverageTestCaseSlideBuilder
		on: CodeCoverageExamples
		selector: #OBCExample3:
		heading: 'Boolean Coverage no subsume a OBC')
		secondaryOn: CodeCoverageExamples selector: #m1:;
		generateTestsCasesWith: [ :argumentNames | { {'foo'}. {'bar'} } ];
		analyzeSecondaryClass;
		value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 1:42:03 pm (UTC)'!
decisionConditionVsBooleanCoverageSlide4

	^ (CodeCoverageTestCaseSlideBuilder
		on: CodeCoverageExamples
		selector: #sayHello
		heading: 'OBC no subsume a Boolean Coverage')
		secondaryOn: CodeCoverageExamples selector: #returnTrue;
		analyzeSecondaryClass;
		value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 12/Sep/2026, 12:59:37 pm (UTC)'!
decisionSelectorsSlide

	^ (self branchCoverageSlideBuilder
		heading: 'Decision Selectors';
		secondaryOn: DecisionCoverageReportBuilder selector: #decisionSelectors)
		value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 5:19:44 pm (UTC)'!
detenerSlide

	^ (PipelineRoadmapSlideBuilder on: 'Detener') value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 5:19:43 pm (UTC)'!
ejercitarSlide

	^ (PipelineRoadmapSlideBuilder on: 'Ejercitar') value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 7:23:50 pm (UTC)'!
instrumentarSlide

	^ (PipelineInstrumentSlideBuilder
		on: CodeCoverageExamples
		selector: #instrumentExample
		heading: 'Instrumentar') value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 2:04:31 pm (UTC)'!
interaccionEntreCriteriosSlide

	^ (CodeCoverageMethodSlideBuilder
		on: InlineMethod
		selector: #addParenthesesIfNeededTo:
		heading: 'Interacción entre Criterios'
		executing: [ InlineMethodTest buildSuite run ]
	) value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 14/Sep/2026, 12:40:45 pm (UTC)'!
methodCoverageSlide

	^ (CodeCoverageTestCaseSlideBuilder
		on: CodeCoverageExamples
		selector: #earlyReturnExample
		heading: 'Method Coverage'
		creatingReportBuildersWith: MethodCoverageReportBuilder) value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 8:55:24 pm (UTC)'!
modoAutomaticoSlide

	^ (EmbeddedPackageBrowserSlideBuilder on: 'Aconcagua' heading: 'Modo Automático') value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 8:55:32 pm (UTC)'!
modoManualSlide

	^ (EmbeddedWorkspaceSlideBuilder on: '"Alcance"
packageToAnalyze := CodePackage installedPackages at: ''Tools-Finder''.
methodsToAnalyze := packageToAnalyze compiledMethodsInNonTestCaseClasses.

"Creacion del analizador"
coverageAnalyzer := CodeCoverageAnalyzer toAnalyzeAll: methodsToAnalyze.

"Iniciar el analisis"
coverageAnalyzer startTrackingCodeCoverage.

"Detener el analisis"
coverageAnalyzer stopTrackingCodeCoverage.

"Abrir el reporte de cobertura de codigo"
codeCoverageReport := coverageAnalyzer report.
CodeCoverageAnalyzerBrowser displayCodeCoverageResultsFrom: codeCoverageReport.' heading: 'Modo Manual') value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 13/Sep/2026, 5:19:43 pm (UTC)'!
notificarSlide

	^ (PipelineRoadmapSlideBuilder on: 'Notificar') value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 14/Sep/2026, 12:22:23 pm (UTC)'!
openingSlide
	
	 ^ (PolaroidSlideBuilder on: 'Droste.jpeg')
		photoWidth: 387
		height: 688;
		rotationDegrees: 5;
		value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 6:49:06 pm (UTC)'!
present

	SlidesPresenter present: self slides! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 12/Sep/2026, 1:29:55 pm (UTC)'!
riceSlide
	
	 ^ (ImageSlideBuilder on: 'rice-paper.png')
		value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 14/Sep/2026, 12:47:53 pm (UTC)'!
slides
	
	^ {
		self openingSlide.
		self codeCoverageDefinitionSlide.
		self methodCoverageSlide.
		self statementCoverageSlide.
		self statementCoverageSlide2.
		self branchCoverageSlide.
		self branchCoverageSlide2.
		self decisionConditionCoverageSlide.
		self subsumptionDefinitionSlide.
		self titleSlide.
		self decisionSelectorsSlide.
		self riceSlide.
		self booleSlide.
		self decisionConditionVsBooleanCoverageSlide.
		self decisionConditionVsBooleanCoverageSlide2.
		self decisionConditionVsBooleanCoverageSlide4.
		self decisionConditionVsBooleanCoverageSlide3.
		self interaccionEntreCriteriosSlide.
		self coverageToolLogosSlide.
		self modoAutomaticoSlide.
		self alcanceSlide.
		self instrumentarSlide.
		self ejercitarSlide.
		self notificarSlide.
		self detenerSlide.
		self modoManualSlide.
		
	}! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 14/Sep/2026, 12:41:27 pm (UTC)'!
statementCoverageSlide

	^ (CodeCoverageTestCaseSlideBuilder
		on: CodeCoverageExamples
		selector: #earlyReturnExample
		heading: 'Statement Coverage'
		creatingReportBuildersWith: StatementCoverageReportBuilder) value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 14/Sep/2026, 12:43:26 pm (UTC)'!
statementCoverageSlide2

	^ (CodeCoverageTestCaseSlideBuilder
		on: CodeCoverageExamples
		selector: #singleDecisionExample:
		heading: 'Statement Coverage'
		creatingReportBuildersWith: StatementCoverageReportBuilder) value! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 11/Sep/2026, 10:56:47 pm (UTC)'!
subsumptionDefinitionSlide

	^ (PolaroidSlideBuilder on: 'subsumption-definition.png')
		rotationDegrees: 8;
		value! !

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

!SystemWindow class methodsFor: '*ThesisDefense' stamp: 'NPM 14/Sep/2026, 1:39:02 pm (UTC)'!
noteTopWindowIn: aWorld but: aWindow
	| newTop presenter |
	"TopWindow must be nil or point to the top window in this project."
	TopWindow := nil.
	aWorld ifNil: [^ nil].
	presenter := aWorld submorphs detect: [:m | m isKindOf: SlidesPresenter] ifNone: [nil].
	presenter ifNotNil: [
		presenter comeToFront.
		aWorld activeHand newKeyboardFocus: presenter.
		^ nil ].
	newTop := aWorld submorphs 
				detect: [:m | (m is: #SystemWindow) and: [m visible and: [m ~~ aWindow]]]
				ifNone: [^nil].
	newTop activate.
	^newTop! !

!LayoutEdgesSpec class methodsFor: '*ThesisDefense' stamp: 'NPM 5/Sep/2026, 4:21:30 pm (UTC)'!
leftColumn
	
	^ self tlEdgesWeight: 0@0 offset: 0@0 brEdgesWeight: 0.5@1 offset: 0! !

!LayoutEdgesSpec class methodsFor: '*ThesisDefense' stamp: 'NPM 5/Sep/2026, 4:22:08 pm (UTC)'!
rightColumn
	
	^ self tlEdgesWeight: 0.5@0 offset: 0@0 brEdgesWeight: 1@1 offset: 0! !
