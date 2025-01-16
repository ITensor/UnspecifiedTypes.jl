using UnspecifiedTypes: UnspecifiedZero
using Test: @testset, @test

@testset "UnspecifiedTypes (eltype=$elt)" for elt in (
  Float32, Float64, Complex{Float32}, Complex{Float64}
)
  for x in (elt(2) + UnspecifiedZero(), UnspecifiedZero() + elt(2))
    @test x isa elt
    @test x === elt(2)
  end

  for x in (elt(2) * UnspecifiedZero(), UnspecifiedZero() * elt(2))
    @test x isa UnspecifiedZero
    @test x === UnspecifiedZero()
  end
end
