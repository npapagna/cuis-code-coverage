# Performance experiments

Measurement scripts, raw data and analysis behind the performance
evaluation (chapter 5) of the thesis on this tool. They measure how much
time running a package's tests with coverage adds over running them
without it, and how that time splits into instrumentation, test run and
finalization.

## Contents

| Path | What it does |
|---|---|
| `scripts/CodeCoverageProfiler.pck.st` | Cuis package that runs a package's tests repeatedly, with and without coverage, and writes the time of each run to a file. |
| `scripts/CodeCoverageMethodCoverage.pck.st` | Cuis package that adds Method Coverage, a coverage criterion that records which methods ran, implemented with method wrappers. |
| `scripts/MethodCoverageProfilerOverrides.st` | Changes the profiler to measure Method Coverage instead of the default coverage, and to skip the runs without coverage. |
| `scripts/ProfileCodeCoverageInPackage.sh` | Measures one series of a package with the default coverage. |
| `scripts/ProfileCodeCoveragePackages.sh` | Measures 3 series of Aconcagua and 3 of Chalten with the default coverage. |
| `scripts/ProfileMethodCoverageInPackage.sh` | Measures one series of a package with Method Coverage. |
| `scripts/ProfileMethodCoveragePackages.sh` | Measures 3 series of Aconcagua and 3 of Chalten with Method Coverage. |
| `scripts/setup.sh` | Builds a workspace with every repository at the commit the thesis used, ready to run the scripts above. |
| `data/raw/` | The 12 result files used in the thesis, as the profiler wrote them. |
| `analysis/Analisis.R` | Computes every table and figure of the thesis's performance section from `data/raw/` and prints them, labeled with the thesis's table numbers. Also draws a histogram of each scenario. |
| `analysis/Helpers.R` | Functions used by `Analisis.R` to read the result files and compute each figure. |
| `analysis/analysis.Rproj`, `analysis/.Rprofile` | RStudio project that opens `Analisis.R` with the right working directory. |

## What the profiler measures

`CodeCoverageProfiler profilePackageNamed: 'Aconcagua'` does, in one
image:

1. Loads CodeCoverage and the package to profile, then waits 120 s for
   the system to stabilize.
2. **Without coverage:** 10 discarded warm-up runs of the package's test
   suite, then 50 measured runs.
3. **With coverage:** 10 discarded warm-up runs of the test suite inside
   `CodeCoverageAnalyzer>>value:`, then 50 measured runs.
4. Writes both blocks of results to `<Package><number>.txt` in the
   image's user files directory. The number is the value of
   `Time primHighResClock` when the file was written, not a date.

The test suite is every test in the system category named after the
package. The methods analyzed are all methods of the package's classes
that are not tests.

Before each measured run, a full garbage collection runs outside the
timed region.

### Columns

| Column | Meaning |
|---|---|
| `Iteration` | Run number within the series (1 to 50). |
| `Time(ms)` | Total time of the run. |
| `Instrument methods(ms)` | Preparing the methods under analysis for coverage, until the tests start running. |
| `Test run(ms)` | Running the test suite with the instrumented methods installed. |
| `Restore original methods(ms)` | Building the coverage report and then restoring the original methods. Despite its name, the column includes report generation. |
| `GCs`, `GCs(ms)` | Full garbage collections during the run and the time spent in them. |
| `Incremental GCs`, `Incremental GCs(ms)` | Incremental (young space) garbage collections during the run and the time spent in them. |

In the block without coverage, the three phase columns are 0.

In the thesis, the phases are called Instrumentación, Ejecución and
Finalización, and the fixed cost is Instrumentación + Finalización.

## Data

Each file is one series: one launch of the Cuis VM from the same saved
image. The 3 series of a scenario were run back to back.

| Scenario in the thesis | Files, in series order | Block used |
|---|---|---|
| Aconcagua, without coverage | `Aconcagua21239567663.txt`, `Aconcagua27287304956.txt`, `Aconcagua34767548292.txt` | without coverage |
| Aconcagua, default coverage | same files | with coverage |
| Chalten, without coverage | `Chalten56923775841.txt`, `Chalten79874487741.txt`, `Chalten103687726743.txt` | without coverage |
| Chalten, default coverage | same files | with coverage |
| Aconcagua, Method Coverage | `Aconcagua14143891578.txt`, `Aconcagua18652844915.txt`, `Aconcagua23716533308.txt` | with coverage (the only block) |
| Chalten, Method Coverage | `Chalten31533917742.txt`, `Chalten38939517637.txt`, `Chalten49224939505.txt` | with coverage (the only block) |

## Environment

Rerunning the measurements requires the Cuis commit and CodeCoverage
version below; `setup.sh` checks out both. The `From Cuis7.9` line at the
top of `scripts/CodeCoverageMethodCoverage.pck.st` only records the image
the package was last saved from, when it was re-saved to declare its
requirement. It is not a requirement.

- Cuis Smalltalk from
  [Cuis-Smalltalk-Dev](https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev)
  at commit `b221722348cc46ebb9f5d9f3a057a3f361aa3d55`, with its bundled
  VM. Its `Cuis7.7-7777` image is updated at startup to update #7912.
- CodeCoverage 1.95, this repository at commit
  `db19de02250a3fd50dfc4e0b4d0893b656e31e9b`.
- R 4.6.0 for the analysis, which uses only base R (no packages).
- Apple MacBook M1 Pro (6 performance + 2 efficiency cores, 16 GB)
  running macOS 26.3, on AC power with low-power mode off. Runs used a
  dedicated user profile with notifications, indexing, backups, sleep,
  Bluetooth and Wi-Fi disabled.

| Package | Repository and commit | Methods analyzed | Tests |
|---|---|---|---|
| Aconcagua 1.25 | [Measures](https://github.com/Cuis-Smalltalk/Measures) `05aa02aada64f7b64898a5e1452ae8fb76f79427` | 1,169 | 731 |
| Chalten 1.19 | [Calendars](https://github.com/Cuis-Smalltalk/Calendars) `0c957afc0c8feb255ac29ae70646e8f96ba4b731` | 916 | 553 |

Chalten depends on Aconcagua.

## Reproducing

### Setup

```sh
scripts/setup.sh <empty-dir>
cd <empty-dir>/Cuis-Smalltalk-Dev
```

`setup.sh` clones Cuis-Smalltalk-Dev, Measures and Calendars at the
commits above, and this repository from GitHub at the
`thesis-performance` tag, side by side in the given folder. It needs
network access and git. Cuis then finds all the packages it needs,
including the ones in `scripts/`, because it searches every folder next
to `Cuis-Smalltalk-Dev/`. It also copies the four `Profile*.sh` scripts
and `MethodCoverageProfilerOverrides.st` into `Cuis-Smalltalk-Dev/`,
which is where they must be run from.

Use a folder of its own, not an existing Cuis setup: the scripts need
the exact Cuis commit above.

### What to expect

The times will not match the files in `data/raw/`. They depend on the
machine, its load and the OS, so even on the same hardware each series
differs a little. Compare the shape of the results instead: the
overhead of each package, how the time splits into phases, and the
fixed cost per method.

Measuring takes a while. Each series waits 120 s for the system to
stabilize and then runs the test suite 120 times (60 with Method
Coverage, which skips the runs without coverage). Going by the run
times in `data/raw/`, a series with the default coverage takes about
4 minutes for Aconcagua and 15 for Chalten, so
`ProfileCodeCoveragePackages.sh` takes about an hour, and
`ProfileMethodCoveragePackages.sh` about half that. On a busy machine
running on battery it takes much longer: one Aconcagua series took
9.5 minutes there.

Each script launch runs one series in a fresh VM and quits when done.
The results file is written to `<empty-dir>/Cuis-Smalltalk-Dev-UserFiles/`.

### Default coverage

```sh
./ProfileCodeCoverageInPackage.sh Aconcagua    # one series
./ProfileCodeCoveragePackages.sh               # all 6 series
```

### Method Coverage

```sh
./ProfileMethodCoverageInPackage.sh Aconcagua  # one series
./ProfileMethodCoveragePackages.sh             # all 6 series
```

Each launch loads CodeCoverage, then `CodeCoverageMethodCoverage.pck.st`,
then `CodeCoverageProfiler.pck.st`, and then files in
`MethodCoverageProfilerOverrides.st`, which must come after the
profiler. These series contain only the block with coverage.

### Analysis

Open `analysis/analysis.Rproj` in RStudio and click Source. Outside
RStudio, run `Rscript Analisis.R` from `analysis/`.

The script prints Tablas 5.2 to 5.6 and every other figure the text
cites, in the order they appear in the thesis, with numbers formatted as
in the thesis.
