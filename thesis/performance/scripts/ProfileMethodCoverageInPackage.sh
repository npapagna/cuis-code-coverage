echo "Profiling with Method Coverage: $1"
./RunCuisOnMac.sh -r CodeCoverage -r CodeCoverageMethodCoverage -r CodeCoverageProfiler -d "Utilities setAuthorName: 'Profiler' initials: 'CCP'" -l MethodCoverageProfilerOverrides.st -d "CodeCoverageProfiler profilePackageNamed: '$1'" -d "Smalltalk quit"
