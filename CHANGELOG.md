# Changelog
This file follows the [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) format.

Due to the way [Cuis Smalltalk](https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev) manages package versions, this project does not follow [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.32](https://github.com/npapagna/cuis-code-coverage/compare/v1.31...v1.32) - 2021-11-27

### Fixed

* Do not filter out non-covered classes in the Code Coverage Browser.
  This bug causes pure abstract classes not to be displayed but their subclasses were still being indented, making
  them look like they are subclasses of the class that happened to be rendered before them.
  Thanks for the catch @hernanwilkinson!

## [1.31](https://github.com/npapagna/cuis-code-coverage/compare/v1.29...v1.31) - 2021-10-30

### Fixed

* False positive in cascade message send collaborators (they were not traced at all).
  Thanks @hernanwilkinson for the catch!

## [1.29](https://github.com/npapagna/cuis-code-coverage/compare/v1.28...v1.29) - 2021-08-26

### Fixed

* The way the source code is retrieved from method nodes in `CodeCoverageSourceCodeGenerator>>#value`.
  Thanks @hernanwilkinson for the catch and the fix!

## [1.28](https://github.com/npapagna/cuis-code-coverage/compare/v1.27...v1.28) - 2021-03-10

### Added

* Support for excluding abstract methods from the code coverage analysis.

## [1.27](https://github.com/npapagna/cuis-code-coverage/compare/v1.10...v1.27) - 2021-02-21

### Added

* Support for considering uncovered methods that has not been executed.
* Support for covering boolean temporary variable declarations.
* Support for covering boolean arguments.
* Support for covering block boolean arguments.
* Support for covering boolean block temporary variable declarations.
* Support for covering boolean selectors.
* Support for covering boolean instance variables within a compiled method (covering an instance variable across 
* Support for covering boolean class variables within a compiled method (covering a class variable across 
  different compiled methods is not supported yet).
* Support for highlighting in yellow partially covered boolean parse nodes.
* Support for covering unreferenced method and block arguments.
* Support for covering unreferenced method and block temporary variables.

## [1.10](https://github.com/npapagna/cuis-code-coverage/compare/v1.9...v1.10) - 2021-01-31

### Fixed

* Mistyped test assertions.


## [1.9](https://github.com/npapagna/cuis-code-coverage/compare/v1.3...v1.9) - 2020-01-29

### Added

* Support for covering messages signaling errors. 
* Support for covering temporary variables declarations.
* Support for covering selector arguments.
* Support for covering block arguments.
* Support for covering block temporary variables declarations.

## [1.3](https://github.com/npapagna/cuis-code-coverage/releases/tag/v1.3) - 2021-01-20

### Added

* Core support for analyzing code coverage when executing code
* New context menu options for System Categories to run package tests with code coverage. 
* New context menu options for System Categories, Classes, Message Categories, and Messages to run tests with code coverage. 
