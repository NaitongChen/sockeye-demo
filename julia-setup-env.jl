using Pkg

Pkg.activate("jlenv") # create a dedicated julia environment

ENV["JULIA_PKG_USE_CLI_GIT"]=true

# install our packages
# must be done like this in a single call to add to avoid issues with resolving
# dependencies when the pkgs are not registered
Pkg.add(
  [
    "TickTock",
    "JLD"
  ]
)