# Package

version       = "0.5.0" # Be sure to update jester.jesterVer too!
author        = "Dominik Picheta"
description   = "A sinatra-like web framework for Nim."
license       = "MIT"

skipFiles = @["todo.markdown"]
skipDirs = @["tests"]

# Deps

requires "nim >= 1.0.0"

when not defined(windows):
  requires "https://github.com/r3g-5z/httpbeast#0f7b07f"

# For tests
requires "https://github.com/timotheecour/asynctools#pr_fix_compilation"

task test, "Runs the test suite.":
  exec "nimble c -y -r tests/tester"