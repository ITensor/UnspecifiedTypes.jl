using Aqua: Aqua
using Test: @testset
using UnspecifiedTypes: UnspecifiedTypes

@testset "Code quality (Aqua.jl)" begin
    Aqua.test_all(UnspecifiedTypes)
end
