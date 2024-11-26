@eval module $(gensym())
using UnspecifiedTypes: UnspecifiedTypes
using Test: @test, @testset

@testset "examples" begin
  include(joinpath(pkgdir(UnspecifiedTypes), "examples", "README.jl"))
end
end
