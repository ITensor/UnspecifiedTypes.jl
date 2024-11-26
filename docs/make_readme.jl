using Literate: Literate
using UnspecifiedTypes: UnspecifiedTypes

Literate.markdown(
  joinpath(pkgdir(UnspecifiedTypes), "examples", "README.jl"),
  joinpath(pkgdir(UnspecifiedTypes));
  flavor=Literate.CommonMarkFlavor(),
  name="README",
)
