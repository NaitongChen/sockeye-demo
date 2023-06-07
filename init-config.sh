#!/bin/bash

julia -e 'using Pkg; Pkg.Registry.rm("General")'
JULIA_PKG_USE_CLI_GIT=true julia julia-setup-env.jl
julia --project=jlenv -e 'using Pkg; Pkg.instantiate(); Pkg.resolve(); Pkg.precompile()'
