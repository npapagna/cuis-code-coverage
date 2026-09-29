'From Cuis7.9 [latest update: #8239] on 28 September 2026 at 7:00:59 pm'!
'Description Initialize class snapshots'!
!provides: 'PackageSnapshot' 1 10!
SystemOrganization addCategory: #'PackageSnapshot-Model'!
SystemOrganization addCategory: #'PackageSnapshot-Tests'!
SystemOrganization addCategory: #PackageSnapshot!


!classDefinition: #SourceCodeSnapshot category: #'PackageSnapshot-Model'!
ParseNodeVisitor subclass: #SourceCodeSnapshot
	instanceVariableNames: 'packageSnapshot'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PackageSnapshot-Model'!
!classDefinition: 'SourceCodeSnapshot class' category: #'PackageSnapshot-Model'!
SourceCodeSnapshot class
	instanceVariableNames: ''!

!classDefinition: #PackageSnapshot category: #'PackageSnapshot-Model'!
Object subclass: #PackageSnapshot
	instanceVariableNames: 'id sourcePackage systemOrganizer snapshotOfClassesByOriginalClassName extensionMethodsToTakeSnapshots classesToTakeSnapshots snapshotsOfExtensionMethods'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PackageSnapshot-Model'!
!classDefinition: 'PackageSnapshot class' category: #'PackageSnapshot-Model'!
PackageSnapshot class
	instanceVariableNames: ''!

!classDefinition: #ClassFactoryForTesting category: #'PackageSnapshot-Tests'!
Object subclass: #ClassFactoryForTesting
	instanceVariableNames: 'testSystemCategory testSharedPool testExtensionSystemCategory createdClasses'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PackageSnapshot-Tests'!
!classDefinition: 'ClassFactoryForTesting class' category: #'PackageSnapshot-Tests'!
ClassFactoryForTesting class
	instanceVariableNames: ''!

!classDefinition: #PackageSnapshotTest category: #'PackageSnapshot-Tests'!
TestCase subclass: #PackageSnapshotTest
	instanceVariableNames: 'classFactory testSystemCategory packageToCopy packageSnapshot'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PackageSnapshot-Tests'!
!classDefinition: 'PackageSnapshotTest class' category: #'PackageSnapshot-Tests'!
PackageSnapshotTest class
	instanceVariableNames: ''!


!SourceCodeSnapshot methodsFor: 'evaluating' stamp: 'NPM 25/Oct/2022, 5:37:20 am (UTC)'!
generateSourceCodeFrom: aMethodNode

	"I have to remove the cached source code so it can be regenerated."
	aMethodNode sourceText: nil.

	^ aMethodNode sourceText! !

!SourceCodeSnapshot methodsFor: 'evaluating' stamp: 'NPM 22/Oct/2022, 6:09:31 pm (UTC)'!
takeOf: aCompiledMethod

	^ self
		takeOf: aCompiledMethod
		beforeGeneratingSourceCodeDo: [ "Do nothing." ]! !

!SourceCodeSnapshot methodsFor: 'evaluating' stamp: 'HAW 26/Jul/2023, 8:51:12 pm (UTC)'!
takeOf: aCompiledMethod beforeGeneratingSourceCodeDo: aBlock

	| methodNode |
	methodNode := aCompiledMethod notOptimizedMethodNode.

	methodNode accept: self.
	aBlock valueWithPossibleArgument: methodNode.

	^ self generateSourceCodeFrom: methodNode! !

!SourceCodeSnapshot methodsFor: 'evaluating' stamp: 'NPM 22/Oct/2022, 6:09:31 pm (UTC)'!
takeOf: aCompiledMethod renamingItTo: newSelector

	^ self
		takeOf: aCompiledMethod
		beforeGeneratingSourceCodeDo: [ :methodNode | methodNode selector: newSelector ]! !

!SourceCodeSnapshot methodsFor: 'initialization' stamp: 'NPM 22/Oct/2022, 5:29:11 pm (UTC)'!
initializeUsing: aPackageSnapshot

	packageSnapshot _ aPackageSnapshot.! !

!SourceCodeSnapshot methodsFor: 'visiting' stamp: 'NPM 22/Oct/2022, 5:50:58 pm (UTC)'!
visitLiteralVariableNode: aLiteralVariableNode

	"Replace classes with their snapshot versions, if any."

	| snapshotOfClass |

	aLiteralVariableNode isReferencingBehavior
		ifFalse: [ ^ self ].

	snapshotOfClass := packageSnapshot
		snapshotOfClassNamed: aLiteralVariableNode name
		ifAbsent: [ ^ self ].

	aLiteralVariableNode
		name: snapshotOfClass name asString
		key: (snapshotOfClass name -> snapshotOfClass)
		code: aLiteralVariableNode code
		! !

!SourceCodeSnapshot methodsFor: 'visiting' stamp: 'NPM 22/Oct/2022, 5:51:34 pm (UTC)'!
visitSelectorNode: aSelectorNode

	"Rename the selectors if they happen to be an extension methods."

	packageSnapshot
		withExtensionMethodSelectorOf: aSelectorNode key
		do: [ :snapshotOfSelector | aSelectorNode key: snapshotOfSelector ]
! !

!SourceCodeSnapshot class methodsFor: 'evaluating' stamp: 'NPM 22/Oct/2022, 6:09:12 pm (UTC)'!
takeOf: aCompiledMethod renamingItTo: newSelector using: aPackageSnapshot

	^ (self using: aPackageSnapshot)
		takeOf: aCompiledMethod
		renamingItTo: newSelector! !

!SourceCodeSnapshot class methodsFor: 'evaluating' stamp: 'NPM 22/Oct/2022, 6:09:23 pm (UTC)'!
takeOf: aCompiledMethod using: aPackageSnapshot

	^ (self using: aPackageSnapshot)
		takeOf: aCompiledMethod ! !

!SourceCodeSnapshot class methodsFor: 'instance creation' stamp: 'NPM 22/Oct/2022, 5:29:11 pm (UTC)'!
using: aPackageSnapshot

	^ self
		new
		initializeUsing: aPackageSnapshot ! !

!PackageSnapshot methodsFor: 'accessing' stamp: 'NPM 26/Oct/2022, 4:12:51 am (UTC)'!
snapshotOf: aBehavior

	^ self
		snapshotOf: aBehavior
		ifAbsent: [ self error: self theBehaviorIsNotIncludedInThisSnapshotErrorMessage ]! !

!PackageSnapshot methodsFor: 'accessing' stamp: 'NPM 22/Oct/2022, 4:19:44 am (UTC)'!
snapshotOf: aBehavior ifAbsent: aBlock

	| snapshotOfClass |
	snapshotOfClass _ self
		snapshotOfClassNamed: aBehavior theNonMetaClass name
		ifAbsent: [ ^ aBlock value ].

	^ aBehavior isMeta
		ifTrue: [ snapshotOfClass class ]
		ifFalse: [ snapshotOfClass ]! !

!PackageSnapshot methodsFor: 'accessing' stamp: 'NPM 26/Oct/2022, 3:52:19 am (UTC)'!
snapshotOfClassNamed: aName ifAbsent: aBlock

	^ snapshotOfClassesByOriginalClassName
		at: aName
		ifAbsent: aBlock! !

!PackageSnapshot methodsFor: 'accessing' stamp: 'NPM 22/Oct/2022, 6:05:05 pm (UTC)'!
withExtensionMethodSelectorOf: originalSelector do: aBlock

	(extensionMethodsToTakeSnapshots
		anySatisfy: [ :extensionMethod | extensionMethod selector = originalSelector])
		ifTrue: [ aBlock value: (self extensionMethodSelectorFor: originalSelector)]! !

!PackageSnapshot methodsFor: 'cleaning up' stamp: 'NPM 26/Oct/2022, 4:25:58 am (UTC)'!
discard

	"For performance reasons, I avoid triggering system change events.
	No one should be listening to them for the package snapshot anyways"
	SystemChangeNotifier uniqueInstance doSilently: [
		self removeClassSnapshots.
		self removeExtensionMethodSnapshots.
	]! !

!PackageSnapshot methodsFor: 'cleaning up' stamp: 'NPM 26/Oct/2022, 4:25:58 am (UTC)'!
removeClassSnapshots

	"I could use SystemOrganizer>>#removeSystemCategory: to get the job done and remove classes and their categories in one how.
	However, is is super slow because to determine the classes in the category to remove it iterales the class hierachy starting from ProtoObject.
	I know the classes I created so I manually delete them, and remove the empty system categories after that."

	| systemCategoriesToRemove |
	"I need to keep the list of system categories to remove before deleting their classes."
	systemCategoriesToRemove _ Set new.

	snapshotOfClassesByOriginalClassName
		valuesDo: [ :snapshotOfClass |
			systemCategoriesToRemove add: snapshotOfClass category.
			snapshotOfClass removeFromSystemUnlogged ].

	systemCategoriesToRemove do: [ : snapshotOfSystemCategory |
		systemOrganizer removeCategory: snapshotOfSystemCategory].

	snapshotOfClassesByOriginalClassName removeAll.! !

!PackageSnapshot methodsFor: 'cleaning up' stamp: 'NPM 25/Oct/2022, 5:27:59 am (UTC)'!
removeExtensionMethodSnapshots

	snapshotsOfExtensionMethods do: [ :snapshotOfExtensionMethod |
		snapshotOfExtensionMethod methodClass removeSelector: snapshotOfExtensionMethod selector ].

	snapshotsOfExtensionMethods removeAll.! !

!PackageSnapshot methodsFor: 'error messages' stamp: 'NPM 26/Oct/2022, 4:13:18 am (UTC)'!
takingSnapshotOfClassesWithSharedPoolsIsNotSupportedYetErrorMessage

	^ 'Taking a snapshot of classes with shared pools is not supported yet'.! !

!PackageSnapshot methodsFor: 'error messages' stamp: 'NPM 26/Oct/2022, 4:12:51 am (UTC)'!
theBehaviorIsNotIncludedInThisSnapshotErrorMessage

	^ 'The behavior is not included in this snapshot'! !

!PackageSnapshot methodsFor: 'generating snapshot names' stamp: 'NPM 22/Oct/2022, 3:25:45 am (UTC)'!
classNameFor: originalClassName

	^ (originalClassName, '_Snapshot_', id asString) asSymbol! !

!PackageSnapshot methodsFor: 'generating snapshot names' stamp: 'NPM 26/Oct/2022, 4:02:07 am (UTC)'!
extensionMethodCategoryFor: originalCategory

	^ '*', (self systemCategoryFor: originalCategory allButFirst )! !

!PackageSnapshot methodsFor: 'generating snapshot names' stamp: 'NPM 22/Oct/2022, 3:26:34 am (UTC)'!
extensionMethodSelectorFor: originalSelector

	^ ('snapshot_', id asString, '_', originalSelector) asSymbol! !

!PackageSnapshot methodsFor: 'generating snapshot names' stamp: 'NPM 22/Oct/2022, 4:22:26 am (UTC)'!
systemCategoryFor: originalSystemCategory

	^ '_Snapshot_', id asString, '_', originalSystemCategory! !

!PackageSnapshot methodsFor: 'initialization' stamp: 'NPM 24/Oct/2022, 5:00:09 am (UTC)'!
initializeToTakeOf: aCodePackage

	sourcePackage _ aCodePackage.
	id _ Time millisecondClockValue.
	systemOrganizer _ SystemOrganization.
	snapshotOfClassesByOriginalClassName _ OrderedDictionary new.
	snapshotsOfExtensionMethods _ OrderedCollection new.! !

!PackageSnapshot methodsFor: 'migrating instances' stamp: 'NPM 26/Oct/2022, 4:22:59 am (UTC)'!
migrateSnapshotInstancesToOriginalClasses

	| snapshotOfClass |

	classesToTakeSnapshots do: [ :originalClass |
		snapshotOfClass _ self snapshotOf: originalClass.
		snapshotOfClass allInstancesDo: [ :instance | originalClass adoptInstance: instance ]]! !

!PackageSnapshot methodsFor: 'taking snapshots' stamp: 'NPM 7/May/2025, 5:54:30 pm (UTC)'!
take

	self setupClassesToTakeSnapshots.
	self setupExtensionMethodsToTakeSnapshots.

	self takeSnapshotOfClasses.
	self takeSnapshotOfMethods.
	self takeSnapshotOfExtensionMethods.
	self initializeClassSnapshots.! !

!PackageSnapshot methodsFor: 'taking snapshots - classes' stamp: 'NPM 22/Oct/2022, 4:20:06 am (UTC)'!
register: aSnapshotOfAClass asSnapshotOf: aClass

	snapshotOfClassesByOriginalClassName
		at: aClass name
		put: aSnapshotOfAClass.! !

!PackageSnapshot methodsFor: 'taking snapshots - classes' stamp: 'NPM 26/Oct/2022, 4:13:18 am (UTC)'!
setupClassesToTakeSnapshots

	classesToTakeSnapshots _ OrderedCollection new.

	sourcePackage classesInSafeOrderDo: [ :class |
		class sharedPoolsString
			ifEmpty: [
				classesToTakeSnapshots add: class ]
			ifNotEmpty: [
				self error: self takingSnapshotOfClassesWithSharedPoolsIsNotSupportedYetErrorMessage  ] ]! !

!PackageSnapshot methodsFor: 'taking snapshots - classes' stamp: 'NPM 7/May/2025, 6:04:33 pm (UTC)'!
takeSnapshotOfClass: aClass

	self
		takeSnapshotOfInstanceSideOf: aClass;
		takeSnapshotOfClassSideOf: aClass! !

!PackageSnapshot methodsFor: 'taking snapshots - classes' stamp: 'NPM 4/May/2025, 3:09:54 pm (UTC)'!
takeSnapshotOfClassSideOf: aClass

	| snapshotOfClass |

	snapshotOfClass := self snapshotOf: aClass.

	snapshotOfClass class
		instanceVariableNames: aClass class instanceVariablesString.

	Smalltalk isLiveTypingInstalled
		ifTrue: [ snapshotOfClass disableLiveTyping; doNotCheckForUnload ].! !

!PackageSnapshot methodsFor: 'taking snapshots - classes' stamp: 'NPM 22/Oct/2022, 6:05:11 pm (UTC)'!
takeSnapshotOfClasses

	classesToTakeSnapshots do: [ :class | self takeSnapshotOfClass: class ]! !

!PackageSnapshot methodsFor: 'taking snapshots - classes' stamp: 'NPM 4/May/2025, 3:10:01 pm (UTC)'!
takeSnapshotOfInstanceSideOf: aClass

	| superclass snapshotOfClass |

	superclass := self
		snapshotOf: aClass superclass
		ifAbsent: [ aClass superclass ].

	snapshotOfClass := superclass
		subclass: (self classNameFor: aClass name)
		instanceVariableNames: aClass instanceVariablesString
		classVariableNames: aClass classVariablesString
		poolDictionaries: aClass sharedPoolsString
		category: (self systemCategoryFor: aClass category).

	Smalltalk isLiveTypingInstalled
		ifTrue: [ snapshotOfClass disableLiveTyping; doNotCheckForUnload ].

	self
		register: snapshotOfClass
		asSnapshotOf: aClass.
	! !

!PackageSnapshot methodsFor: 'taking snapshots - extension methods' stamp: 'NPM 22/Oct/2022, 6:05:05 pm (UTC)'!
setupExtensionMethodsToTakeSnapshots

	extensionMethodsToTakeSnapshots _ sourcePackage extensionMethods! !

!PackageSnapshot methodsFor: 'taking snapshots - extension methods' stamp: 'NPM 26/Oct/2022, 3:56:41 am (UTC)'!
takeSnapshotOfExtensionMethod: aCompiledMethod

	|snapshotOfSourceCode snapshotOfSelector snapshotOfCategory snapshotOfExtensionMethod |

	snapshotOfSelector _ self extensionMethodSelectorFor: aCompiledMethod selector.
	snapshotOfSourceCode _ SourceCodeSnapshot takeOf: aCompiledMethod renamingItTo: snapshotOfSelector using: self.
	snapshotOfCategory := self extensionMethodCategoryFor: aCompiledMethod category.

	aCompiledMethod methodClass
			compileSilently: snapshotOfSourceCode
			classified: snapshotOfCategory.

	snapshotOfExtensionMethod := aCompiledMethod methodClass compiledMethodAt:  snapshotOfSelector.

	snapshotOfExtensionMethod disableLiveTyping.

	snapshotsOfExtensionMethods add: (snapshotOfExtensionMethod).

			! !

!PackageSnapshot methodsFor: 'taking snapshots - extension methods' stamp: 'NPM 22/Oct/2022, 6:05:05 pm (UTC)'!
takeSnapshotOfExtensionMethods

	extensionMethodsToTakeSnapshots do: [ :extensionMethod |
		self takeSnapshotOfExtensionMethod: extensionMethod ]! !

!PackageSnapshot methodsFor: 'taking snapshots - methods' stamp: 'NPM 26/Oct/2022, 3:57:27 am (UTC)'!
takeSnapshotOfMethod: aCompiledMethod

	| snapshotOfMethodClass snapshotOfSourceCode snapshotOfMethodSelector |

	snapshotOfMethodClass _ self snapshotOf: aCompiledMethod methodClass.
	snapshotOfSourceCode _ SourceCodeSnapshot takeOf: aCompiledMethod using: self.

	snapshotOfMethodSelector _ snapshotOfMethodClass
		compileSilently: snapshotOfSourceCode
		classified: aCompiledMethod category.

	(snapshotOfMethodClass compiledMethodAt: snapshotOfMethodSelector)
		disableLiveTyping! !

!PackageSnapshot methodsFor: 'taking snapshots - methods' stamp: 'NPM 22/Oct/2022, 6:05:11 pm (UTC)'!
takeSnapshotOfMethods

	^ classesToTakeSnapshots do: [ :class |
		 self
			takeSnapshotsOfMethodsOf: class;
			takeSnapshotsOfMethodsOf: class class ]! !

!PackageSnapshot methodsFor: 'taking snapshots - methods' stamp: 'NPM 21/Oct/2022, 6:09:52 am (UTC)'!
takeSnapshotsOfMethodsOf: aBehavior

	| snapshotOfBehavior |
	snapshotOfBehavior _ self snapshotOf: aBehavior.

	aBehavior methodsDo: [ :method |
		self takeSnapshotOfMethod: method ]! !

!PackageSnapshot methodsFor: 'as yet unclassified' stamp: 'NPM 7/May/2025, 6:04:35 pm (UTC)'!
initializeClassSnapshots

	snapshotOfClassesByOriginalClassName values
		do: [ :aClass | aClass initialize ]! !

!PackageSnapshot class methodsFor: 'instance creation' stamp: 'NPM 22/Oct/2022, 4:29:45 am (UTC)'!
toTakeOf: aCodePackage

	^ self
		new
		initializeToTakeOf: aCodePackage
		! !

!PackageSnapshot class methodsFor: 'taking snapshots' stamp: 'NPM 22/Oct/2022, 6:06:41 pm (UTC)'!
takeOf: aCodePackage

	^ (self toTakeOf: aCodePackage) take! !

!ClassFactoryForTesting methodsFor: 'accessing' stamp: 'NPM 11/Oct/2022, 5:18:27 am (UTC)'!
systemCategory

	^ testSystemCategory ! !

!ClassFactoryForTesting methodsFor: 'cleaning up' stamp: 'NPM 26/Oct/2022, 4:24:03 am (UTC)'!
tearDown

	createdClasses reverseDo: [ :class | class removeFromSystemUnlogged ].

	"document"
	SystemOrganization removeCategory: testSystemCategory.
	SystemOrganization removeCategory: testExtensionSystemCategory.
	Smalltalk removeKey: testSharedPool ifAbsent: [ "do nothing" ] .! !

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 25/Oct/2022, 5:13:31 am (UTC)'!
createClass

	^ self createSubclassOf: Object! !

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 4/May/2025, 3:17:39 pm (UTC)'!
createClassInCategory: aSystemCategory

	^ self
		createSubclassOf: Object
		category: aSystemCategory.
! !

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 25/Oct/2022, 4:31:25 am (UTC)'!
createClassWithClassAndInstanceVariables

	^ self
		createSubclassOf: Object
		instanceVariableNames: 'instVar1'
		classVariableNames: 'ClassVar2'
		poolDictionaries: ''
		category: testSystemCategory.! !

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 4/May/2025, 3:17:54 pm (UTC)'!
createClassWithClassExtensionMethod: aString

	| newClass |
	newClass := self createClassInCategory: testExtensionSystemCategory.

	newClass class compileSilently: aString classified: '*', testSystemCategory.

	^ newClass.
	! !

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 25/Oct/2022, 5:13:50 am (UTC)'!
createClassWithClassMethod: aString

	| newClass |
	newClass _ self createClassWithClassAndInstanceVariables.

	newClass class compileSilently: aString classified: 'delete-me'.

	^ newClass
! !

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 25/Oct/2022, 5:13:54 am (UTC)'!
createClassWithInstanceExtensionMethod: aString

	| newClass |
	newClass _ self
		createSubclassOf: Object
		instanceVariableNames: 'instVar1'
		classVariableNames: 'ClassVar2'
		poolDictionaries: ''
		category: testExtensionSystemCategory.

	newClass compileSilently: aString classified: '*', testSystemCategory.

	^ newClass.
	! !

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 25/Oct/2022, 5:14:05 am (UTC)'!
createClassWithInstanceMethod: aString

	| newClass |
	newClass _ self createClassWithClassAndInstanceVariables.

	newClass compileSilently: aString classified: 'delete-me'.

	^ newClass
! !

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 25/Oct/2022, 4:32:55 am (UTC)'!
createClassWithSharedPool

	Smalltalk
		at: testSharedPool
		ifAbsentPut: [ Dictionary new ].

	^ self
		createSubclassOf: Object
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: testSharedPool
		category: testSystemCategory! !

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 4/May/2025, 3:16:50 pm (UTC)'!
createSubclassOf: aClass

	^ self
		createSubclassOf: aClass
		category: testSystemCategory.
! !

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 4/May/2025, 3:16:39 pm (UTC)'!
createSubclassOf: aClass category: aSystemCategory

	^ self createSubclassOf: aClass
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: aSystemCategory.
! !

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 4/May/2025, 3:07:53 pm (UTC)'!
createSubclassOf: aClass instanceVariableNames: instanceVariableNames classVariableNames: classVariableNames poolDictionaries: poolDictionaries category: category

	| newClass |
	newClass _ aClass
		subclass: self newClassName
		instanceVariableNames: instanceVariableNames
		classVariableNames: classVariableNames
		poolDictionaries: poolDictionaries
		category: category.

	newClass disableLiveTyping.

	createdClasses add: newClass.

	^ newClass.		! !

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 4/May/2025, 3:09:02 pm (UTC)'!
newClassName

	 | className |
	
	[
		className := ('TestClass', Time millisecondClockValue asString) asSymbol.
		Smalltalk hasClassNamed: className
	] whileTrue.

	^ className! !

!ClassFactoryForTesting methodsFor: 'initialization' stamp: 'NPM 26/Oct/2022, 4:24:03 am (UTC)'!
initialize

	| timestamp |
	super initialize.
	timestamp := Time millisecondClockValue.
	testSystemCategory _ '__', timestamp asString, '_TestSystemCategory__'.
	testExtensionSystemCategory _ '__', timestamp asString, '_TestExtensionSystemCategory__'.
	testSharedPool _ #DeleteMeSharedPool.

	createdClasses _ OrderedCollection new.! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 21/Oct/2022, 6:08:34 am (UTC)'!
assert: aClass performs: aSelector returningCopyOf: aResult

	| copyOfClass copyOfSelector |
	copyOfClass _ packageSnapshot snapshotOf: aResult.
	copyOfSelector _  packageSnapshot extensionMethodSelectorFor: aSelector.

	self assert: copyOfClass equals: (aClass perform: copyOfSelector).! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 19/Oct/2022, 5:53:05 am (UTC)'!
assert: anObject performsSnapshotOfExtensionMethodNamed: aSelector returning: aResult

	| copyOfSelector |
	copyOfSelector _ packageSnapshot extensionMethodSelectorFor: aSelector.

	self assert: aResult equals: (anObject perform: copyOfSelector).
! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 21/Oct/2022, 6:08:34 am (UTC)'!
assertCopyOf: aSubclass isSubclassOfCopyOf: aSuperclass

	| copyOfSubclass copyOfSuperclass |
	copyOfSubclass _ packageSnapshot snapshotOf: aSubclass.
	copyOfSuperclass _ packageSnapshot snapshotOf: aSuperclass.

	self assert: copyOfSuperclass equals: copyOfSubclass superclass.! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 21/Oct/2022, 6:08:34 am (UTC)'!
assertCopyOf: aClass performs: aSelector returning: aResult

	| copyOfClass |
	copyOfClass _ packageSnapshot snapshotOf: aClass.

	self assert: aResult equals: (copyOfClass perform: aSelector).! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 21/Oct/2022, 6:08:34 am (UTC)'!
assertCopyOf: aClass performs: aSelector returningCopyOf: aResult

	| copyOfClass copyOfResult |
	copyOfClass _ packageSnapshot snapshotOf: aClass.
	copyOfResult _  packageSnapshot snapshotOf: aResult.

	self assert: copyOfResult equals: (copyOfClass perform: #m1).
	! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 21/Oct/2022, 6:08:34 am (UTC)'!
assertInstanceOfCopyOf: aClass performs: aSelector returning: aResult

	| copyOfClass |
	copyOfClass _ packageSnapshot snapshotOf: aClass.

	self assert: aResult equals: (copyOfClass new perform: aSelector).! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 21/Oct/2022, 6:08:34 am (UTC)'!
assertInstanceOfCopyOf: aClass performs: aSelector returningCopyOf: aResult

	| copyOfClass copyOfResult |
	copyOfClass _ packageSnapshot snapshotOf: aClass.
	copyOfResult _  packageSnapshot snapshotOf: aResult.

	self assert: copyOfResult equals: (copyOfClass new perform: aSelector).! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 22/Oct/2022, 4:22:26 am (UTC)'!
assertNumberOfClassesIn: aString is: aQuantity


	| classes |
	classes _ SystemOrganization classesAt: (packageSnapshot systemCategoryFor: aString).

	self
		assert: aQuantity
		equals: classes size.! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 22/Oct/2022, 6:16:18 pm (UTC)'!
assertSnapshotOfExtensionMethod: aSelector isClassifiedUnderTheSnapshotExtensionIn: aBehavior

	| snapshotOfM1 snapshotOfM1Selector originalMethodCategory |
	snapshotOfM1Selector _ packageSnapshot extensionMethodSelectorFor: aSelector.
	snapshotOfM1 _ aBehavior compiledMethodAt: snapshotOfM1Selector.
	originalMethodCategory := (aBehavior compiledMethodAt: aSelector) category.

	self assert:
		 (packageSnapshot extensionMethodCategoryFor: originalMethodCategory)
		 equals: snapshotOfM1 category.
! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 26/Oct/2022, 4:09:14 am (UTC)'!
assertWasCopied: aClass

	| copyOfClass |
	copyOfClass _ packageSnapshot snapshotOf: aClass.

	self deny: aClass = copyOfClass.
	self
		assert: copyOfClass instanceVariablesString
		equals: aClass instanceVariablesString.
	self
		assert: copyOfClass classVarNames
		equals: aClass classVarNames.
	self assert: copyOfClass sharedPools isEmpty.
	self
		assert: (packageSnapshot systemCategoryFor: aClass category)
		equals: copyOfClass category.
	self
		assert: copyOfClass class instanceVariablesString
		equals: aClass class instanceVariablesString.
	! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 22/Oct/2022, 4:22:26 am (UTC)'!
denyAPackageSnapshotWasTaken

	| copyOfTestSustemCategory |
	copyOfTestSustemCategory := packageSnapshot systemCategoryFor: testSystemCategory.

	self deny: (SystemOrganization categories includes: copyOfTestSustemCategory)! !

!PackageSnapshotTest methodsFor: 'exercising' stamp: 'NPM 26/Oct/2022, 4:11:00 am (UTC)'!
takeASnapshotOfTestPackage

	packageSnapshot _ PackageSnapshot takeOf: packageToCopy! !

!PackageSnapshotTest methodsFor: 'setUp/tearDown' stamp: 'NPM 22/Oct/2022, 4:49:33 am (UTC)'!
setUp

	super setUp.

	classFactory _ ClassFactoryForTesting new.
	testSystemCategory _ classFactory systemCategory.

	packageToCopy _ CodePackage new packageName: testSystemCategory.
	packageSnapshot  _ PackageSnapshot toTakeOf: packageToCopy.! !

!PackageSnapshotTest methodsFor: 'setUp/tearDown' stamp: 'NPM 26/Oct/2022, 4:25:36 am (UTC)'!
tearDown

	super tearDown.
	classFactory tearDown.
	packageSnapshot discard.! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:11:00 am (UTC)'!
test000_doesNotCreateSystemCategoriesWhenAPackageIsEmpty

	self takeASnapshotOfTestPackage.

	self denyAPackageSnapshotWasTaken.! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:11:00 am (UTC)'!
test001_takesASnapshotOfClassesWithClassAndInstanceVariables

	| classToCopy anotherClassToCopy |
	classToCopy _ classFactory createClassWithClassAndInstanceVariables.
	anotherClassToCopy _ classFactory createClassWithClassAndInstanceVariables.

	self takeASnapshotOfTestPackage.

	self assertNumberOfClassesIn: testSystemCategory is: 2.
	self assertWasCopied: classToCopy.
	self assertWasCopied: anotherClassToCopy.! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:13:18 am (UTC)'!
test003_doesNotTakeASnapshotWhenThereAreClassesWithSharedPools

	classFactory
		createClassWithClassAndInstanceVariables;
		createClassWithSharedPool.

	self
		should: [ self takeASnapshotOfTestPackage ]
		raise: Error
		withMessageText: packageSnapshot takingSnapshotOfClassesWithSharedPoolsIsNotSupportedYetErrorMessage.

	self denyAPackageSnapshotWasTaken.! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:11:00 am (UTC)'!
test004_takesASnapshotOfInstanceMethodsNotReferencingClassesInThePackage

	| classWithInstanceMethod |
	classWithInstanceMethod _ classFactory createClassWithInstanceMethod: 'm1 ^1'.

	self takeASnapshotOfTestPackage.

	classWithInstanceMethod removeSelector: #m1.
	self
		assertInstanceOfCopyOf: classWithInstanceMethod
		performs: #m1
		returning: 1.! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:11:00 am (UTC)'!
test005_takesASnapshotOfClassMethodsNotReferencingClassesInThePackage

	| classToCopy |
	classToCopy _ classFactory createClassWithClassMethod:  'm1 ^1'.

	self takeASnapshotOfTestPackage.

	classToCopy class removeSelector: #m1.
	self
		assertCopyOf: classToCopy
		performs: #m1
		returning: 1.! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:11:00 am (UTC)'!
test006_takesASnapshotOfExtensionMethodsNotReferencingClassesInThePackage

	| classWithExtensionMethod |
	classWithExtensionMethod _ classFactory createClassWithClassExtensionMethod:  'm1 ^1'.

	self takeASnapshotOfTestPackage.

	classWithExtensionMethod class removeSelector: #m1	.
	self
		assert: classWithExtensionMethod
		performsSnapshotOfExtensionMethodNamed: #m1
		returning: 1! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:11:00 am (UTC)'!
test007_renamesReferencesToClassesInThePackageInInstanceMethods

	| class1 classReferencingClass1 |
	class1 _ classFactory createClassWithClassAndInstanceVariables.
	classReferencingClass1 _ classFactory createClassWithInstanceMethod: 'm1 ^', class1 name.

	self takeASnapshotOfTestPackage.

	self
		assertInstanceOfCopyOf: classReferencingClass1
		performs: #m1
		returningCopyOf: class1
	! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:11:00 am (UTC)'!
test008_doesNotRenameReferencesToClassesOutsideThePackageInInstanceMethods

	| classReferencingClassesOutsideThePackage |
	classReferencingClassesOutsideThePackage _ classFactory createClassWithInstanceMethod: 'm1 ^ Object'.

	self takeASnapshotOfTestPackage.

	self
		assertInstanceOfCopyOf: classReferencingClassesOutsideThePackage
		performs: #m1
		returning: Object! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:11:00 am (UTC)'!
test009_renamesReferencesToClassesInThePackageInClassMethods

	| class1 classReferencingClass1 |
	class1 _ classFactory createClassWithClassAndInstanceVariables.
	classReferencingClass1 _ classFactory createClassWithClassMethod: 'm1 ^', class1 name.

	self takeASnapshotOfTestPackage.

	self
		assertCopyOf: classReferencingClass1
		performs: #m1
		returningCopyOf: class1! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:11:00 am (UTC)'!
test010_doesNotRenameReferencesToClassesOutsideThePackageInClassMethods

	| classReferencingClassesOutsideThePackage |
	classReferencingClassesOutsideThePackage _ classFactory createClassWithClassMethod: 'm1 ^ Object'.

	self takeASnapshotOfTestPackage.

	self
		assertCopyOf: classReferencingClassesOutsideThePackage
		performs: #m1
		returning: Object

	! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:11:00 am (UTC)'!
test011_renamesReferencesToClassesInThePackageInExtensionMethods

	| classWithExtensionMethod class1 |
	class1 _ classFactory createClassWithClassAndInstanceVariables.
	classWithExtensionMethod _ classFactory createClassWithClassExtensionMethod: 'm1 ^ ', class1 name.

	self takeASnapshotOfTestPackage.

	self
		assert: classWithExtensionMethod
		performs: #m1
		returningCopyOf: class1 ! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:11:00 am (UTC)'!
test012_doesNotRenameReferencesToClassesOutsideThePackageInExtensionMethods

	| classReferencingClassesOutsideThePackage |
	classReferencingClassesOutsideThePackage _ classFactory createClassWithClassExtensionMethod:  'm1 ^ Object'.

	self takeASnapshotOfTestPackage.

	self
		assert: classReferencingClassesOutsideThePackage
		performsSnapshotOfExtensionMethodNamed: #m1
		returning: Object! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:11:00 am (UTC)'!
test013_renamesReferencesToExtensionMethodsInInstanceMethods

	| classWithExtensionMethod classCallingExtensionMethod |
	classWithExtensionMethod _ classFactory createClassWithInstanceExtensionMethod: 'm1 ^ 1'.
	classCallingExtensionMethod _ classFactory createClassWithInstanceMethod: 'm2 ^', classWithExtensionMethod name, ' new m1'.

	self takeASnapshotOfTestPackage.

	classWithExtensionMethod removeSelector: #m1.
	self
		assertInstanceOfCopyOf: classCallingExtensionMethod
		performs: #m2
		returning: 1.
	! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:11:00 am (UTC)'!
test014_renamesReferencesToExtensionMethodsInClassMethods

	| classWithExtensionMethod classCallingExtensionMethod |
	classWithExtensionMethod _ classFactory createClassWithInstanceExtensionMethod: 'm1 ^ 1'.
	classCallingExtensionMethod _ classFactory createClassWithClassMethod: 'm2 ^', classWithExtensionMethod name, ' new m1'.

	self takeASnapshotOfTestPackage.

	classWithExtensionMethod removeSelector: #m1.
	self
		assertCopyOf: classCallingExtensionMethod
		performs: #m2
		returning: 1.
	! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:11:00 am (UTC)'!
test015_renamesReferencesToExtensionMethodsInExtensionMethods

	| classWithExtensionMethod classCallingExtensionMethod |
	classWithExtensionMethod _ classFactory createClassWithInstanceExtensionMethod: 'm1 ^ 1'.
	classCallingExtensionMethod _ classFactory createClassWithClassExtensionMethod: 'm2 ^', classWithExtensionMethod name, ' new m1'.

	self takeASnapshotOfTestPackage.

	classWithExtensionMethod removeSelector: #m1.
	self
		assert: classCallingExtensionMethod
		performsSnapshotOfExtensionMethodNamed: #m2
		returning: 1.! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:11:00 am (UTC)'!
test016_takesSnapshotsOfClassHierarchies

	| classWithExtensionMethod classCallingExtensionMethod |
	classWithExtensionMethod _ classFactory createClass.
	classCallingExtensionMethod _ classFactory createSubclassOf: classWithExtensionMethod.

	self takeASnapshotOfTestPackage.

	self
		assertCopyOf: classCallingExtensionMethod
		isSubclassOfCopyOf: classWithExtensionMethod.! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:11:00 am (UTC)'!
test017_takesSnapshotsOfExtensionMethodsInTheSnapshotCategory

	| classWithExtensionMethod |
	classWithExtensionMethod _ classFactory createClassWithInstanceExtensionMethod: 'm1'.

	self takeASnapshotOfTestPackage.

	self
		assertSnapshotOfExtensionMethod: #m1
		isClassifiedUnderTheSnapshotExtensionIn: classWithExtensionMethod

	! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:11:00 am (UTC)'!
test018_migratesInstancesOfSnapshotClassesToTheOriginalClasses

	| originalClass snapshotOfOriginalClass snapshotInstance |
	originalClass _ classFactory createClass.
	self takeASnapshotOfTestPackage.
	snapshotOfOriginalClass _ packageSnapshot snapshotOf: originalClass.
	snapshotInstance _ snapshotOfOriginalClass new.

	packageSnapshot migrateSnapshotInstancesToOriginalClasses.

	self assert: originalClass equals: snapshotInstance class.! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:13:00 am (UTC)'!
test019_doesNotAllowToAskForSnapshotOfClassesOutsideThePackage

	self takeASnapshotOfTestPackage.

	self
		should: [ packageSnapshot snapshotOf: Object ]
		raise: Error
		withMessageText: packageSnapshot theBehaviorIsNotIncludedInThisSnapshotErrorMessage! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 26/Oct/2022, 4:22:25 am (UTC)'!
test020_keepsReferencesToNonBehaviorLiteralVariableNodes

	| originalClass |
	originalClass _ classFactory createClassWithClassMethod: 'm1 ^ Smalltalk'.

	self takeASnapshotOfTestPackage.

	self assert: Smalltalk equals: originalClass m1.! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 7/May/2025, 6:07:10 pm (UTC)'!
test021_InitializesSnapshotOfClasses

	| originalClass classSnapshot |
	
	originalClass := classFactory createClassWithClassMethod: 'initialize initializeCalled := true'.
	originalClass theMetaClass addInstVarName: 'initializeCalled'.

	self takeASnapshotOfTestPackage.

	classSnapshot := packageSnapshot snapshotOf: originalClass.
	self assert: (classSnapshot instVarNamed: 'initializeCalled')! !

!ClassDescription methodsFor: '*PackageSnapshot' stamp: 'HAW 30/May/2023, 2:39:59 am (UTC)'!
disableLiveTyping

	Smalltalk isLiveTypingInstalled ifTrue: [ instanceVariablesRawTypes := nil ]! !

!CompiledMethod methodsFor: '*PackageSnapshot' stamp: 'HAW 30/May/2023, 2:22:17 am (UTC)'!
disableLiveTyping

	Smalltalk isLiveTypingInstalled
		ifTrue: [
			self
				withPropertiesDo: [:additionalMethodState | additionalMethodState disableLiveTyping ]
				ifSelector: [ :aSelector | ]]! !
