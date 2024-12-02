# # UnspecifiedTypes.jl
# 
# [![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://ITensor.github.io/UnspecifiedTypes.jl/stable/)
# [![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://ITensor.github.io/UnspecifiedTypes.jl/dev/)
# [![Build Status](https://github.com/ITensor/UnspecifiedTypes.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ITensor/UnspecifiedTypes.jl/actions/workflows/CI.yml?query=branch%3Amain)
# [![Coverage](https://codecov.io/gh/ITensor/UnspecifiedTypes.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/ITensor/UnspecifiedTypes.jl)
# [![Code Style: Blue](https://img.shields.io/badge/code%20style-blue-4495d1.svg)](https://github.com/invenia/BlueStyle)
# [![Aqua](https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg)](https://github.com/JuliaTesting/Aqua.jl)

# A module defining a set of basic types which are place holders for allocated bit-wise representable types.

# ## Installation instructions

# This package currently resides in the `ITensor/ITensorRegistry` local registry.
# In order to install, simply add that registry through your package manager.
# This step is only required once.
#=
```julia
julia> using Pkg: Pkg;
julia> Pkg.Registry.add(url="https://github.com/ITensor/ITensorRegistry.jl")
```
=#
# Then, the package can be added as usual through the package manager:

#=
```julia
julia> Pkg.add("UnspecifiedTypes")
```
=#

# ## Examples

using UnspecifiedTypes: UnspecifiedTypes
# Examples go here.
