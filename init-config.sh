#!/bin/bash

cd /scratch/st-tdjc-1/naitong-demo
julia -e 'using Pkg; Pkg.Registry.rm("General")'
JULIA_PKG_USE_CLI_GIT=true julia /scratch/st-tdjc-1/naitong-demo/sockeye-demo/julia-setup-env.jl
julia --project=jlenv -e 'using Pkg; Pkg.instantiate(); Pkg.resolve(); Pkg.precompile()'