# Shell Script Bug: Silent Failure on Missing Files

This repository demonstrates a common but subtle bug in shell scripting: silent failure when attempting to process files that do not exist.  The `bug.sh` script iterates through a list of files. If a file is missing, it should report an error and exit, but instead it proceeds silently, possibly leading to unexpected results or program crashes later on.  The `bugSolution.sh` script provides a corrected version with proper error handling.

## How to Reproduce

1. Clone the repository.
2. Run `bug.sh`. Observe that it fails silently even if one of the specified files does not exist.
3. Run `bugSolution.sh`. Observe that it reports errors for missing files and exits gracefully.

## Bug Fix

The solution involves explicitly checking for the existence of each file using the `-f` operator within the `if` condition. The script now reports an error message and exits with a non-zero exit code when a file is not found, allowing calling scripts to detect this failure.