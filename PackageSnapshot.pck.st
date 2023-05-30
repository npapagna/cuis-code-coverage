'From Cuis 6.0 [latest update: #5831] on 29 May 2023 at 11:40:23 pm'!
'Description Improves LiveTyping disabling mechanism. '!
!provides: 'PackageSnapshot' 1 6!
SystemOrganization addCategory: 'PackageSnapshot-Model'!
SystemOrganization addCategory: 'PackageSnapshot-Tests'!
SystemOrganization addCategory: 'PackageSnapshot'!


!classDefinition: #SourceCodeSnapshot category: 'PackageSnapshot-Model'!
ParseNodeVisitor subclass: #SourceCodeSnapshot
	instanceVariableNames: 'packageSnapshot'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PackageSnapshot-Model'!
!classDefinition: 'SourceCodeSnapshot class' category: 'PackageSnapshot-Model'!
SourceCodeSnapshot class
	instanceVariableNames: ''!

!classDefinition: #PackageSnapshotTest category: 'PackageSnapshot-Tests'!
TestCase subclass: #PackageSnapshotTest
	instanceVariableNames: 'classFactory testSystemCategory packageToCopy packageSnapshot'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PackageSnapshot-Tests'!
!classDefinition: 'PackageSnapshotTest class' category: 'PackageSnapshot-Tests'!
PackageSnapshotTest class
	instanceVariableNames: ''!

!classDefinition: #PackageSnapshot category: 'PackageSnapshot-Model'!
Object subclass: #PackageSnapshot
	instanceVariableNames: 'id sourcePackage systemOrganizer snapshotOfClassesByOriginalClassName extensionMethodsToTakeSnapshots classesToTakeSnapshots snapshotsOfExtensionMethods'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PackageSnapshot-Model'!
!classDefinition: 'PackageSnapshot class' category: 'PackageSnapshot-Model'!
PackageSnapshot class
	instanceVariableNames: ''!

!classDefinition: #ClassFactoryForTesting category: 'PackageSnapshot-Tests'!
Object subclass: #ClassFactoryForTesting
	instanceVariableNames: 'testSystemCategory testSharedPool testExtensionSystemCategory createdClasses'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PackageSnapshot-Tests'!
!classDefinition: 'ClassFactoryForTesting class' category: 'PackageSnapshot-Tests'!
ClassFactoryForTesting class
	instanceVariableNames: ''!


!SourceCodeSnapshot methodsFor: 'evaluating' stamp: 'NPM 10/25/2022 02:37:20'!
generateSourceCodeFrom: aMethodNode

	"I have to remove the cached source code so it can be regenerated."
	aMethodNode sourceText: nil.

	^ aMethodNode sourceText! !

!SourceCodeSnapshot methodsFor: 'evaluating' stamp: 'NPM 10/22/2022 15:09:31'!
takeOf: aCompiledMethod

	^ self
		takeOf: aCompiledMethod
		beforeGeneratingSourceCodeDo: [ "Do nothing." ]! !

!SourceCodeSnapshot methodsFor: 'evaluating' stamp: 'NPM 10/22/2022 15:09:31'!
takeOf: aCompiledMethod beforeGeneratingSourceCodeDo: aBlock

	| methodNode |
	methodNode _ aCompiledMethod methodNode.

	methodNode accept: self.
	aBlock valueWithPossibleArgument: methodNode.

	^ self generateSourceCodeFrom: methodNode! !

!SourceCodeSnapshot methodsFor: 'evaluating' stamp: 'NPM 10/22/2022 15:09:31'!
takeOf: aCompiledMethod renamingItTo: newSelector

	^ self
		takeOf: aCompiledMethod
		beforeGeneratingSourceCodeDo: [ :methodNode | methodNode selector: newSelector ]! !

!SourceCodeSnapshot methodsFor: 'initialization' stamp: 'NPM 10/22/2022 14:29:11'!
initializeUsing: aPackageSnapshot

	packageSnapshot _ aPackageSnapshot.! !

!SourceCodeSnapshot methodsFor: 'visiting' stamp: 'NPM 10/22/2022 14:50:58'!
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

!SourceCodeSnapshot methodsFor: 'visiting' stamp: 'NPM 10/22/2022 14:51:34'!
visitSelectorNode: aSelectorNode

	"Rename the selectors if they happen to be an extension methods."

	packageSnapshot
		withExtensionMethodSelectorOf: aSelectorNode key
		do: [ :snapshotOfSelector | aSelectorNode key: snapshotOfSelector ]
! !

!SourceCodeSnapshot class methodsFor: 'evaluating' stamp: 'NPM 10/22/2022 15:09:12'!
takeOf: aCompiledMethod renamingItTo: newSelector using: aPackageSnapshot

	^ (self using: aPackageSnapshot)
		takeOf: aCompiledMethod
		renamingItTo: newSelector! !

!SourceCodeSnapshot class methodsFor: 'evaluating' stamp: 'NPM 10/22/2022 15:09:23'!
takeOf: aCompiledMethod using: aPackageSnapshot

	^ (self using: aPackageSnapshot)
		takeOf: aCompiledMethod ! !

!SourceCodeSnapshot class methodsFor: 'instance creation' stamp: 'NPM 10/22/2022 14:29:11'!
using: aPackageSnapshot

	^ self
		new
		initializeUsing: aPackageSnapshot ! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 10/21/2022 03:08:34'!
assert: aClass performs: aSelector returningCopyOf: aResult

	| copyOfClass copyOfSelector |
	copyOfClass _ packageSnapshot snapshotOf: aResult.
	copyOfSelector _  packageSnapshot extensionMethodSelectorFor: aSelector.

	self assert: copyOfClass equals: (aClass perform: copyOfSelector).! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 10/19/2022 02:53:05'!
assert: anObject performsSnapshotOfExtensionMethodNamed: aSelector returning: aResult

	| copyOfSelector |
	copyOfSelector _ packageSnapshot extensionMethodSelectorFor: aSelector.

	self assert: aResult equals: (anObject perform: copyOfSelector).
! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 10/21/2022 03:08:34'!
assertCopyOf: aSubclass isSubclassOfCopyOf: aSuperclass

	| copyOfSubclass copyOfSuperclass |
	copyOfSubclass _ packageSnapshot snapshotOf: aSubclass.
	copyOfSuperclass _ packageSnapshot snapshotOf: aSuperclass.

	self assert: copyOfSuperclass equals: copyOfSubclass superclass.! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 10/21/2022 03:08:34'!
assertCopyOf: aClass performs: aSelector returning: aResult

	| copyOfClass |
	copyOfClass _ packageSnapshot snapshotOf: aClass.

	self assert: aResult equals: (copyOfClass perform: aSelector).! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 10/21/2022 03:08:34'!
assertCopyOf: aClass performs: aSelector returningCopyOf: aResult

	| copyOfClass copyOfResult |
	copyOfClass _ packageSnapshot snapshotOf: aClass.
	copyOfResult _  packageSnapshot snapshotOf: aResult.

	self assert: copyOfResult equals: (copyOfClass perform: #m1).
	! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 10/21/2022 03:08:34'!
assertInstanceOfCopyOf: aClass performs: aSelector returning: aResult

	| copyOfClass |
	copyOfClass _ packageSnapshot snapshotOf: aClass.

	self assert: aResult equals: (copyOfClass new perform: aSelector).! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 10/21/2022 03:08:34'!
assertInstanceOfCopyOf: aClass performs: aSelector returningCopyOf: aResult

	| copyOfClass copyOfResult |
	copyOfClass _ packageSnapshot snapshotOf: aClass.
	copyOfResult _  packageSnapshot snapshotOf: aResult.

	self assert: copyOfResult equals: (copyOfClass new perform: aSelector).! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 10/22/2022 01:22:26'!
assertNumberOfClassesIn: aString is: aQuantity


	| classes |
	classes _ SystemOrganization classesAt: (packageSnapshot systemCategoryFor: aString).

	self
		assert: aQuantity
		equals: classes size.! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 10/22/2022 15:16:18'!
assertSnapshotOfExtensionMethod: aSelector isClassifiedUnderTheSnapshotExtensionIn: aBehavior

	| snapshotOfM1 snapshotOfM1Selector originalMethodCategory |
	snapshotOfM1Selector _ packageSnapshot extensionMethodSelectorFor: aSelector.
	snapshotOfM1 _ aBehavior compiledMethodAt: snapshotOfM1Selector.
	originalMethodCategory := (aBehavior compiledMethodAt: aSelector) category.

	self assert:
		 (packageSnapshot extensionMethodCategoryFor: originalMethodCategory)
		 equals: snapshotOfM1 category.
! !

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 10/26/2022 01:09:14'!
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

!PackageSnapshotTest methodsFor: 'assertions' stamp: 'NPM 10/22/2022 01:22:26'!
denyAPackageSnapshotWasTaken

	| copyOfTestSustemCategory |
	copyOfTestSustemCategory := packageSnapshot systemCategoryFor: testSystemCategory.

	self deny: (SystemOrganization categories includes: copyOfTestSustemCategory)! !

!PackageSnapshotTest methodsFor: 'exercising' stamp: 'NPM 10/26/2022 01:11:00'!
takeASnapshotOfTestPackage

	packageSnapshot _ PackageSnapshot takeOf: packageToCopy! !

!PackageSnapshotTest methodsFor: 'setUp/tearDown' stamp: 'NPM 10/22/2022 01:49:33'!
setUp

	super setUp.

	classFactory _ ClassFactoryForTesting new.
	testSystemCategory _ classFactory systemCategory.

	packageToCopy _ CodePackage new packageName: testSystemCategory.
	packageSnapshot  _ PackageSnapshot toTakeOf: packageToCopy.! !

!PackageSnapshotTest methodsFor: 'setUp/tearDown' stamp: 'NPM 10/26/2022 01:25:36'!
tearDown

	super tearDown.
	classFactory tearDown.
	packageSnapshot discard.! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:11:00'!
test000_doesNotCreateSystemCategoriesWhenAPackageIsEmpty

	self takeASnapshotOfTestPackage.

	self denyAPackageSnapshotWasTaken.! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:11:00'!
test001_takesASnapshotOfClassesWithClassAndInstanceVariables

	| classToCopy anotherClassToCopy |
	classToCopy _ classFactory createClassWithClassAndInstanceVariables.
	anotherClassToCopy _ classFactory createClassWithClassAndInstanceVariables.

	self takeASnapshotOfTestPackage.

	self assertNumberOfClassesIn: testSystemCategory is: 2.
	self assertWasCopied: classToCopy.
	self assertWasCopied: anotherClassToCopy.! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:13:18'!
test003_doesNotTakeASnapshotWhenThereAreClassesWithSharedPools

	classFactory
		createClassWithClassAndInstanceVariables;
		createClassWithSharedPool.

	self
		should: [ self takeASnapshotOfTestPackage ]
		raise: Error
		withMessageText: packageSnapshot takingSnapshotOfClassesWithSharedPoolsIsNotSupportedYetErrorMessage.

	self denyAPackageSnapshotWasTaken.! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:11:00'!
test004_takesASnapshotOfInstanceMethodsNotReferencingClassesInThePackage

	| classWithInstanceMethod |
	classWithInstanceMethod _ classFactory createClassWithInstanceMethod: 'm1 ^1'.

	self takeASnapshotOfTestPackage.

	classWithInstanceMethod removeSelector: #m1.
	self
		assertInstanceOfCopyOf: classWithInstanceMethod
		performs: #m1
		returning: 1.! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:11:00'!
test005_takesASnapshotOfClassMethodsNotReferencingClassesInThePackage

	| classToCopy |
	classToCopy _ classFactory createClassWithClassMethod:  'm1 ^1'.

	self takeASnapshotOfTestPackage.

	classToCopy class removeSelector: #m1.
	self
		assertCopyOf: classToCopy
		performs: #m1
		returning: 1.! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:11:00'!
test006_takesASnapshotOfExtensionMethodsNotReferencingClassesInThePackage

	| classWithExtensionMethod |
	classWithExtensionMethod _ classFactory createClassWithClassExtensionMethod:  'm1 ^1'.

	self takeASnapshotOfTestPackage.

	classWithExtensionMethod class removeSelector: #m1	.
	self
		assert: classWithExtensionMethod
		performsSnapshotOfExtensionMethodNamed: #m1
		returning: 1! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:11:00'!
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

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:11:00'!
test008_doesNotRenameReferencesToClassesOutsideThePackageInInstanceMethods

	| classReferencingClassesOutsideThePackage |
	classReferencingClassesOutsideThePackage _ classFactory createClassWithInstanceMethod: 'm1 ^ Object'.

	self takeASnapshotOfTestPackage.

	self
		assertInstanceOfCopyOf: classReferencingClassesOutsideThePackage
		performs: #m1
		returning: Object! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:11:00'!
test009_renamesReferencesToClassesInThePackageInClassMethods

	| class1 classReferencingClass1 |
	class1 _ classFactory createClassWithClassAndInstanceVariables.
	classReferencingClass1 _ classFactory createClassWithClassMethod: 'm1 ^', class1 name.

	self takeASnapshotOfTestPackage.

	self
		assertCopyOf: classReferencingClass1
		performs: #m1
		returningCopyOf: class1! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:11:00'!
test010_doesNotRenameReferencesToClassesOutsideThePackageInClassMethods

	| classReferencingClassesOutsideThePackage |
	classReferencingClassesOutsideThePackage _ classFactory createClassWithClassMethod: 'm1 ^ Object'.

	self takeASnapshotOfTestPackage.

	self
		assertCopyOf: classReferencingClassesOutsideThePackage
		performs: #m1
		returning: Object

	! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:11:00'!
test011_renamesReferencesToClassesInThePackageInExtensionMethods

	| classWithExtensionMethod class1 |
	class1 _ classFactory createClassWithClassAndInstanceVariables.
	classWithExtensionMethod _ classFactory createClassWithClassExtensionMethod: 'm1 ^ ', class1 name.

	self takeASnapshotOfTestPackage.

	self
		assert: classWithExtensionMethod
		performs: #m1
		returningCopyOf: class1 ! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:11:00'!
test012_doesNotRenameReferencesToClassesOutsideThePackageInExtensionMethods

	| classReferencingClassesOutsideThePackage |
	classReferencingClassesOutsideThePackage _ classFactory createClassWithClassExtensionMethod:  'm1 ^ Object'.

	self takeASnapshotOfTestPackage.

	self
		assert: classReferencingClassesOutsideThePackage
		performsSnapshotOfExtensionMethodNamed: #m1
		returning: Object! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:11:00'!
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

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:11:00'!
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

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:11:00'!
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

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:11:00'!
test016_takesSnapshotsOfClassHierarchies

	| classWithExtensionMethod classCallingExtensionMethod |
	classWithExtensionMethod _ classFactory createClass.
	classCallingExtensionMethod _ classFactory createSubclassOf: classWithExtensionMethod.

	self takeASnapshotOfTestPackage.

	self
		assertCopyOf: classCallingExtensionMethod
		isSubclassOfCopyOf: classWithExtensionMethod.! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:11:00'!
test017_takesSnapshotsOfExtensionMethodsInTheSnapshotCategory

	| classWithExtensionMethod |
	classWithExtensionMethod _ classFactory createClassWithInstanceExtensionMethod: 'm1'.

	self takeASnapshotOfTestPackage.

	self
		assertSnapshotOfExtensionMethod: #m1
		isClassifiedUnderTheSnapshotExtensionIn: classWithExtensionMethod

	! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:11:00'!
test018_migratesInstancesOfSnapshotClassesToTheOriginalClasses

	| originalClass snapshotOfOriginalClass snapshotInstance |
	originalClass _ classFactory createClass.
	self takeASnapshotOfTestPackage.
	snapshotOfOriginalClass _ packageSnapshot snapshotOf: originalClass.
	snapshotInstance _ snapshotOfOriginalClass new.

	packageSnapshot migrateSnapshotInstancesToOriginalClasses.

	self assert: originalClass equals: snapshotInstance class.! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:13:00'!
test019_doesNotAllowToAskForSnapshotOfClassesOutsideThePackage

	self takeASnapshotOfTestPackage.

	self
		should: [ packageSnapshot snapshotOf: Object ]
		raise: Error
		withMessageText: packageSnapshot theBehaviorIsNotIncludedInThisSnapshotErrorMessage! !

!PackageSnapshotTest methodsFor: 'tests' stamp: 'NPM 10/26/2022 01:22:25'!
test020_keepsReferencesToNonBehaviorLiteralVariableNodes

	| originalClass |
	originalClass _ classFactory createClassWithClassMethod: 'm1 ^ Smalltalk'.

	self takeASnapshotOfTestPackage.

	self assert: Smalltalk equals: originalClass m1.! !

!PackageSnapshot methodsFor: 'accessing' stamp: 'NPM 10/26/2022 01:12:51'!
snapshotOf: aBehavior

	^ self
		snapshotOf: aBehavior
		ifAbsent: [ self error: self theBehaviorIsNotIncludedInThisSnapshotErrorMessage ]! !

!PackageSnapshot methodsFor: 'accessing' stamp: 'NPM 10/22/2022 01:19:44'!
snapshotOf: aBehavior ifAbsent: aBlock

	| snapshotOfClass |
	snapshotOfClass _ self
		snapshotOfClassNamed: aBehavior theNonMetaClass name
		ifAbsent: [ ^ aBlock value ].

	^ aBehavior isMeta
		ifTrue: [ snapshotOfClass class ]
		ifFalse: [ snapshotOfClass ]! !

!PackageSnapshot methodsFor: 'accessing' stamp: 'NPM 10/26/2022 00:52:19'!
snapshotOfClassNamed: aName ifAbsent: aBlock

	^ snapshotOfClassesByOriginalClassName
		at: aName
		ifAbsent: aBlock! !

!PackageSnapshot methodsFor: 'accessing' stamp: 'NPM 10/22/2022 15:05:05'!
withExtensionMethodSelectorOf: originalSelector do: aBlock

	(extensionMethodsToTakeSnapshots
		anySatisfy: [ :extensionMethod | extensionMethod selector = originalSelector])
		ifTrue: [ aBlock value: (self extensionMethodSelectorFor: originalSelector)]! !

!PackageSnapshot methodsFor: 'cleaning up' stamp: 'NPM 10/26/2022 01:25:58'!
discard

	"For performance reasons, I avoid triggering system change events.
	No one should be listening to them for the package snapshot anyways"
	SystemChangeNotifier uniqueInstance doSilently: [
		self removeClassSnapshots.
		self removeExtensionMethodSnapshots.
	]! !

!PackageSnapshot methodsFor: 'cleaning up' stamp: 'NPM 10/26/2022 01:25:58'!
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

!PackageSnapshot methodsFor: 'cleaning up' stamp: 'NPM 10/25/2022 02:27:59'!
removeExtensionMethodSnapshots

	snapshotsOfExtensionMethods do: [ :snapshotOfExtensionMethod |
		snapshotOfExtensionMethod methodClass removeSelector: snapshotOfExtensionMethod selector ].

	snapshotsOfExtensionMethods removeAll.! !

!PackageSnapshot methodsFor: 'error messages' stamp: 'NPM 10/26/2022 01:13:18'!
takingSnapshotOfClassesWithSharedPoolsIsNotSupportedYetErrorMessage

	^ 'Taking a snapshot of classes with shared pools is not supported yet'.! !

!PackageSnapshot methodsFor: 'error messages' stamp: 'NPM 10/26/2022 01:12:51'!
theBehaviorIsNotIncludedInThisSnapshotErrorMessage

	^ 'The behavior is not included in this snapshot'! !

!PackageSnapshot methodsFor: 'generating snapshot names' stamp: 'NPM 10/22/2022 00:25:45'!
classNameFor: originalClassName

	^ (originalClassName, '_Snapshot_', id asString) asSymbol! !

!PackageSnapshot methodsFor: 'generating snapshot names' stamp: 'NPM 10/26/2022 01:02:07'!
extensionMethodCategoryFor: originalCategory

	^ '*', (self systemCategoryFor: originalCategory allButFirst )! !

!PackageSnapshot methodsFor: 'generating snapshot names' stamp: 'NPM 10/22/2022 00:26:34'!
extensionMethodSelectorFor: originalSelector

	^ ('snapshot_', id asString, '_', originalSelector) asSymbol! !

!PackageSnapshot methodsFor: 'generating snapshot names' stamp: 'NPM 10/22/2022 01:22:26'!
systemCategoryFor: originalSystemCategory

	^ '_Snapshot_', id asString, '_', originalSystemCategory! !

!PackageSnapshot methodsFor: 'initialization' stamp: 'NPM 10/24/2022 02:00:09'!
initializeToTakeOf: aCodePackage

	sourcePackage _ aCodePackage.
	id _ Time millisecondClockValue.
	systemOrganizer _ SystemOrganization.
	snapshotOfClassesByOriginalClassName _ OrderedDictionary new.
	snapshotsOfExtensionMethods _ OrderedCollection new.! !

!PackageSnapshot methodsFor: 'migrating instances' stamp: 'NPM 10/26/2022 01:22:59'!
migrateSnapshotInstancesToOriginalClasses

	| snapshotOfClass |

	classesToTakeSnapshots do: [ :originalClass |
		snapshotOfClass _ self snapshotOf: originalClass.
		snapshotOfClass allInstancesDo: [ :instance | originalClass adoptInstance: instance ]]! !

!PackageSnapshot methodsFor: 'taking snapshots' stamp: 'NPM 10/26/2022 00:55:52'!
take

	self setupClassesToTakeSnapshots.
	self setupExtensionMethodsToTakeSnapshots.

	self takeSnapshotOfClasses.
	self takeSnapshotOfMethods.
	self takeSnapshotOfExtensionMethods.! !

!PackageSnapshot methodsFor: 'taking snapshots - classes' stamp: 'NPM 10/22/2022 01:20:06'!
register: aSnapshotOfAClass asSnapshotOf: aClass

	snapshotOfClassesByOriginalClassName
		at: aClass name
		put: aSnapshotOfAClass.! !

!PackageSnapshot methodsFor: 'taking snapshots - classes' stamp: 'NPM 10/26/2022 01:13:18'!
setupClassesToTakeSnapshots

	classesToTakeSnapshots _ OrderedCollection new.

	sourcePackage classesInSafeOrderDo: [ :class |
		class sharedPoolsString
			ifEmpty: [
				classesToTakeSnapshots add: class ]
			ifNotEmpty: [
				self error: self takingSnapshotOfClassesWithSharedPoolsIsNotSupportedYetErrorMessage  ] ]! !

!PackageSnapshot methodsFor: 'taking snapshots - classes' stamp: 'NPM 10/21/2022 03:02:07'!
takeSnapshotOfClass: aClass

	self
		takeSnapshotOfInstanceSideOf: aClass;
		takeSnapshotOfClassSideOf: aClass! !

!PackageSnapshot methodsFor: 'taking snapshots - classes' stamp: 'HAW 4/24/2023 12:43:00'!
takeSnapshotOfClassSideOf: aClass

	| snapshotOfClass |

	snapshotOfClass := self snapshotOf: aClass.

	snapshotOfClass class
		instanceVariableNames: aClass class instanceVariablesString.

	snapshotOfClass disableLiveTyping; doNotCheckForUnload.! !

!PackageSnapshot methodsFor: 'taking snapshots - classes' stamp: 'NPM 10/22/2022 15:05:11'!
takeSnapshotOfClasses

	classesToTakeSnapshots do: [ :class | self takeSnapshotOfClass: class ]! !

!PackageSnapshot methodsFor: 'taking snapshots - classes' stamp: 'HAW 4/24/2023 12:42:30'!
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

	snapshotOfClass disableLiveTyping; doNotCheckForUnload.

	self
		register: snapshotOfClass
		asSnapshotOf: aClass.
	! !

!PackageSnapshot methodsFor: 'taking snapshots - extension methods' stamp: 'NPM 10/22/2022 15:05:05'!
setupExtensionMethodsToTakeSnapshots

	extensionMethodsToTakeSnapshots _ sourcePackage extensionMethods! !

!PackageSnapshot methodsFor: 'taking snapshots - extension methods' stamp: 'NPM 10/26/2022 00:56:41'!
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

!PackageSnapshot methodsFor: 'taking snapshots - extension methods' stamp: 'NPM 10/22/2022 15:05:05'!
takeSnapshotOfExtensionMethods

	extensionMethodsToTakeSnapshots do: [ :extensionMethod |
		self takeSnapshotOfExtensionMethod: extensionMethod ]! !

!PackageSnapshot methodsFor: 'taking snapshots - methods' stamp: 'NPM 10/26/2022 00:57:27'!
takeSnapshotOfMethod: aCompiledMethod

	| snapshotOfMethodClass snapshotOfSourceCode snapshotOfMethodSelector |

	snapshotOfMethodClass _ self snapshotOf: aCompiledMethod methodClass.
	snapshotOfSourceCode _ SourceCodeSnapshot takeOf: aCompiledMethod using: self.

	snapshotOfMethodSelector _ snapshotOfMethodClass
		compileSilently: snapshotOfSourceCode
		classified: aCompiledMethod category.

	(snapshotOfMethodClass compiledMethodAt: snapshotOfMethodSelector)
		disableLiveTyping! !

!PackageSnapshot methodsFor: 'taking snapshots - methods' stamp: 'NPM 10/22/2022 15:05:11'!
takeSnapshotOfMethods

	^ classesToTakeSnapshots do: [ :class |
		 self
			takeSnapshotsOfMethodsOf: class;
			takeSnapshotsOfMethodsOf: class class ]! !

!PackageSnapshot methodsFor: 'taking snapshots - methods' stamp: 'NPM 10/21/2022 03:09:52'!
takeSnapshotsOfMethodsOf: aBehavior

	| snapshotOfBehavior |
	snapshotOfBehavior _ self snapshotOf: aBehavior.

	aBehavior methodsDo: [ :method |
		self takeSnapshotOfMethod: method ]! !

!PackageSnapshot class methodsFor: 'instance creation' stamp: 'NPM 10/22/2022 01:29:45'!
toTakeOf: aCodePackage

	^ self
		new
		initializeToTakeOf: aCodePackage
		! !

!PackageSnapshot class methodsFor: 'taking snapshots' stamp: 'NPM 10/22/2022 15:06:41'!
takeOf: aCodePackage

	^ (self toTakeOf: aCodePackage) take! !

!ClassFactoryForTesting methodsFor: 'accessing' stamp: 'NPM 10/11/2022 02:18:27'!
systemCategory

	^ testSystemCategory ! !

!ClassFactoryForTesting methodsFor: 'cleaning up' stamp: 'NPM 10/26/2022 01:24:03'!
tearDown

	createdClasses reverseDo: [ :class | class removeFromSystemUnlogged ].

	"document"
	SystemOrganization removeCategory: testSystemCategory.
	SystemOrganization removeCategory: testExtensionSystemCategory.
	Smalltalk removeKey: testSharedPool ifAbsent: [ "do nothing" ] .! !

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 10/25/2022 02:13:31'!
createClass

	^ self createSubclassOf: Object! !

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 10/25/2022 01:31:25'!
createClassWithClassAndInstanceVariables

	^ self
		createSubclassOf: Object
		instanceVariableNames: 'instVar1'
		classVariableNames: 'ClassVar2'
		poolDictionaries: ''
		category: testSystemCategory.! !

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 10/26/2022 01:24:03'!
createClassWithClassExtensionMethod: aString

	| newClass |
	newClass _ Object subclass: ('TestClass', Time millisecondClockValue asString) asSymbol instanceVariableNames: 'instVar1' classVariableNames: 'ClassVar2' poolDictionaries: '' category: testExtensionSystemCategory.

	newClass class compileSilently: aString classified: '*', testSystemCategory.

	createdClasses add: newClass.

	^ newClass.
	! !

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 10/25/2022 02:13:50'!
createClassWithClassMethod: aString

	| newClass |
	newClass _ self createClassWithClassAndInstanceVariables.

	newClass class compileSilently: aString classified: 'delete-me'.

	^ newClass
! !

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 10/25/2022 02:13:54'!
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

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 10/25/2022 02:14:05'!
createClassWithInstanceMethod: aString

	| newClass |
	newClass _ self createClassWithClassAndInstanceVariables.

	newClass compileSilently: aString classified: 'delete-me'.

	^ newClass
! !

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 10/25/2022 01:32:55'!
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

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 10/25/2022 01:33:09'!
createSubclassOf: aClass

	^ self createSubclassOf: aClass
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: testSystemCategory.
! !

!ClassFactoryForTesting methodsFor: 'creating classes' stamp: 'NPM 10/26/2022 01:24:03'!
createSubclassOf: aClass instanceVariableNames: instanceVariableNames classVariableNames: classVariableNames poolDictionaries: poolDictionaries category: category

	| newClass |
	newClass _ aClass
		subclass: ('TestClass', Time millisecondClockValue asString) asSymbol
		instanceVariableNames: instanceVariableNames
		classVariableNames: classVariableNames
		poolDictionaries: poolDictionaries
		category: category.

	newClass disableLiveTyping.

	createdClasses add: newClass.

	^ newClass.		! !

!ClassFactoryForTesting methodsFor: 'initialization' stamp: 'NPM 10/26/2022 01:24:03'!
initialize

	| timestamp |
	super initialize.
	timestamp := Time millisecondClockValue.
	testSystemCategory _ '__', timestamp asString, '_TestSystemCategory__'.
	testExtensionSystemCategory _ '__', timestamp asString, '_TestExtensionSystemCategory__'.
	testSharedPool _ #DeleteMeSharedPool.

	createdClasses _ OrderedCollection new.! !

!ClassDescription methodsFor: '*PackageSnapshot' stamp: 'HAW 5/29/2023 23:39:59'!
disableLiveTyping

	Smalltalk isLiveTypingInstalled ifTrue: [ instanceVariablesRawTypes := nil ]! !

!CompiledMethod methodsFor: '*PackageSnapshot' stamp: 'HAW 5/29/2023 23:22:17'!
disableLiveTyping

	Smalltalk isLiveTypingInstalled
		ifTrue: [
			self
				withPropertiesDo: [:additionalMethodState | additionalMethodState disableLiveTyping ]
				ifSelector: [ :aSelector | ]]! !
