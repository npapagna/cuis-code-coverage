'From Cuis7.9 [latest update: #8149] on 5 September 2026 at 4:33:19 pm'!
'Description '!
!provides: 'ThesisDefense' 1 17!
!requires: 'Cuis-Base' nil nil nil!
!requires: 'CodeCoverage' nil nil nil!
!requires: 'CodeCoverageDemo' nil nil nil!
SystemOrganization addCategory: #ThesisDefense!


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

!SlidesPresenter methodsFor: 'keyboard' stamp: 'NPM 5/Sep/2026, 6:14:49 pm (UTC)'!
handlesKeyboardFocus

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

!SlidesPresenter class methodsFor: 'instance creation' stamp: 'NPM 5/Sep/2026, 6:14:45 pm (UTC)'!
on: aCollectionOfSlides

	^ self new
		slides: aCollectionOfSlides;
		yourself! !

!SlidesPresenter class methodsFor: 'presenting' stamp: 'NPM 5/Sep/2026, 6:48:28 pm (UTC)'!
present: aCollectionOfSlides

	(self on: aCollectionOfSlides) present! !

!MethodSlideBuilder methodsFor: 'building' stamp: 'NPM 5/Sep/2026, 6:44:35 pm (UTC)'!
codeEditor

	| browser editor |

	browser := Browser new.
	browser setSelectedSystemCategory: methodClass category.
	browser selectClass: methodClass.
	browser selectedMessageName: selector.

	editor := TextModelMorph
		textProvider: browser
		textGetter: #acceptedContents
		textSetter: #contents:notifying:
		selectionGetter: #contentsSelection.
	editor layoutSpec: LayoutSpec useAll.

	^ editor! !

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

!MethodSlideBuilder methodsFor: 'building' stamp: 'NPM 5/Sep/2026, 6:52:18 pm (UTC)'!
value

	| slide editor top |

	slide := library blankSlide.
	top := SlideStyle margin.

	heading ifNotNil: [
		| headingLabel |
		headingLabel := (library heading: heading) color: SlideStyle textPrimary.
		headingLabel morphPosition: SlideStyle margin @ top.
		slide addMorph: headingLabel.
		top := top + headingLabel morphHeight + (SlideStyle space: 3) ].

	editor := self codeEditor.
	editor morphExtent: (SlideStyle canvasExtent x - (SlideStyle margin * 2)) @ (SlideStyle canvasExtent y - top - SlideStyle margin).
	editor morphPosition: SlideStyle margin @ top.
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

!CodeCoverageMethodSlideBuilder methodsFor: 'building' stamp: 'NPM 5/Sep/2026, 7:21:47 pm (UTC)'!
value

	| top rowHeight headingLabel |

	slide := library blankSlide.
	top := SlideStyle margin.

	heading ifNotNil: [
		headingLabel := (library heading: heading) color: SlideStyle textPrimary ].

	runButton := PluggableButtonMorph model: self action: #runCoverage label: nil.
	runButton label: 'Run Coverage' font: library captionFont.
	runButton morphExtent: runButton morphWidth + 24 @ runButton morphHeight.
	runButton color: SlideStyle accent.

	rowHeight := (headingLabel ifNil: [ 0 ] ifNotNil: [ headingLabel morphHeight ]) max: runButton morphHeight.

	headingLabel ifNotNil: [
		headingLabel morphPosition: SlideStyle margin @ (top + ((rowHeight - headingLabel morphHeight) // 2)).
		slide addMorph: headingLabel ].

	runButton morphPosition: (SlideStyle canvasExtent x - SlideStyle margin - runButton morphWidth) @ (top + ((rowHeight - runButton morphHeight) // 2)).
	slide addMorph: runButton.

	top := top + rowHeight + (SlideStyle space: 3).

	codeEditorMorph := self codeEditor.
	codeEditorMorph morphExtent: (SlideStyle canvasExtent x - (SlideStyle margin * 2)) @ (SlideStyle canvasExtent y - top - SlideStyle margin).
	codeEditorMorph morphPosition: SlideStyle margin @ top.
	slide addMorph: codeEditorMorph.

	^ slide! !

!CodeCoverageMethodSlideBuilder methodsFor: 'running' stamp: 'NPM 5/Sep/2026, 7:27:37 pm (UTC)'!
runCoverage

	| compiledMethod analyzer report methodReport browser newEditor |

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

	newEditor := TextModelMorph
		textProvider: browser
		textGetter: #acceptedContents
		textSetter: #contents:notifying:
		selectionGetter: #contentsSelection.
	newEditor layoutSpec: LayoutSpec useAll.
	newEditor morphExtent: codeEditorMorph morphExtent.
	newEditor morphPosition: codeEditorMorph morphPosition.

	slide replaceSubmorph: codeEditorMorph by: newEditor.
	codeEditorMorph := newEditor.

	runButton label: 'Re-run' font: library captionFont.
	runButton morphExtent: runButton morphWidth + 24 @ runButton morphHeight.
	runButton color: SlideStyle surface.
	runButton morphPosition: (SlideStyle canvasExtent x - SlideStyle margin - runButton morphWidth) @ runButton morphPosition y.

	self updateBadgeFor: methodReport coverageRatio! !

!CodeCoverageMethodSlideBuilder methodsFor: 'running' stamp: 'NPM 5/Sep/2026, 7:17:30 pm (UTC)'!
updateBadgeFor: aCoverageRatio

	| text |

	text := (aCoverageRatio * 100) rounded printString , '% covered'.

	coverageBadge
		ifNil: [
			coverageBadge := (library caption: text) color: SlideStyle accent2.
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

!SlideStyle class methodsFor: 'colors' stamp: 'NPM 5/Sep/2026, 6:56:35 pm (UTC)'!
accent

	^ self theme == #light
		ifTrue: [ Color fromHexString: '#B23A2E' ]
		ifFalse: [ Color fromHexString: '#E8A33D' ]! !

!SlideStyle class methodsFor: 'colors' stamp: 'NPM 5/Sep/2026, 5:05:55 pm (UTC)'!
accent2

	^ Color fromHexString: '#7FB0D8'! !

!SlideStyle class methodsFor: 'colors' stamp: 'NPM 5/Sep/2026, 6:56:32 pm (UTC)'!
background

	^ self theme == #light
		ifTrue: [ Color fromHexString: '#FAF8F5' ]
		ifFalse: [ Color fromHexString: '#14161A' ]! !

!SlideStyle class methodsFor: 'colors' stamp: 'NPM 5/Sep/2026, 5:05:53 pm (UTC)'!
surface

	^ Color fromHexString: '#1E2228'! !

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

!ThesisDefenseMorphLibrary methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 6:18:45 pm (UTC)'!
blankSlide

	| slide |

	slide := ColoredBoxMorph new.
	slide color: SlideStyle background.
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

!ThesisDefenseMorphLibrary class methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:40:30 pm (UTC)'!
fontsFolder
	
	^ (CodePackage installedPackages at: #ThesisDefense) fullFileName asFileEntry parent / 'thesis' / 'fonts'.! !

!ThesisDefenseMorphLibrary class methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:45:53 pm (UTC)'!
imagesFolder
	
	^ (CodePackage installedPackages at: #ThesisDefense) fullFileName asFileEntry parent / 'thesis' / 'images'.! !

!ThesisDefenseMorphLibrary class methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 4:40:19 pm (UTC)'!
loadFonts

	TrueTypeFontFamily readAllTrueTypeFontsIn: self fontsFolder.! !

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 7:30:25 pm (UTC)'!
branchCoverageSlide

	^ (CodeCoverageMethodSlideBuilder
		on: CodeCoverageExamples
		selector: #decisionCoverageExample:
		heading: 'Branch Coverage'
		executing: [ CodeCoverageExamples new decisionCoverageExample: true ]
		creatingReportBuildersWith: DecisionCoverageReportBuilder) value! !

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

!ThesisDefensePresentation methodsFor: 'as yet unclassified' stamp: 'NPM 5/Sep/2026, 7:30:25 pm (UTC)'!
slides
	
	^ {
		self titleSlide.
		self methodCoverageSlide.
		self statementCoverageSlide.
		self branchCoverageSlide.
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

!TitleSlideBuilder methodsFor: 'building' stamp: 'NPM 5/Sep/2026, 5:16:40 pm (UTC)'!
spacer: aHeight

	^ ColoredBoxMorph new color: Color transparent; morphExtent: 0 @ aHeight; yourself! !

!TitleSlideBuilder methodsFor: 'building' stamp: 'NPM 5/Sep/2026, 5:52:02 pm (UTC)'!
titleColumn

	| titleLines column leftAligned |

	leftAligned := LayoutSizeSpec keepMorphExtent offAxisEdgeWeight: #columnLeft.

	titleLines := LinearLayoutMorph newColumn.
	titleLines separation: 0.
	titleLines color: Color transparent.
	#('Cobertura de código' 'en lenguajes dinámicamente tipados' 'usando meta-programación')
		do: [:each | titleLines addMorph: ((library title: each) color: SlideStyle textPrimary) layoutSpec: leftAligned].
	titleLines morphExtent: titleLines minimumExtent.

	column := LinearLayoutMorph newColumn.
	column separation: 0.
	column color: Color transparent.
	column
		addMorph: titleLines layoutSpec: leftAligned;
		addMorph: (self spacer: (SlideStyle space: 4)) layoutSpec: leftAligned;
		addMorph: ((library caption: 'Tesis de Licenciatura en Ciencias de la Computación') color: SlideStyle textSecondary) layoutSpec: leftAligned;
		addMorph: (self spacer: (SlideStyle space: 3)) layoutSpec: leftAligned;
		addMorph: ((library body: 'Nicolás Papagna Maldonado') color: SlideStyle textPrimary) layoutSpec: leftAligned;
		addMorph: (self spacer: (SlideStyle space: 1)) layoutSpec: leftAligned;
		addMorph: ((library caption: 'Director: Hernán Wilkinson') color: SlideStyle textSecondary) layoutSpec: leftAligned.
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
