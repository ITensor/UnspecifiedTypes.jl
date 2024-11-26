using UnspecifiedTypes: UnspecifiedTypes
using Documenter: Documenter, DocMeta, deploydocs, makedocs

DocMeta.setdocmeta!(
  UnspecifiedTypes, :DocTestSetup, :(using UnspecifiedTypes); recursive=true
)

include("make_index.jl")

makedocs(;
  modules=[UnspecifiedTypes],
  authors="ITensor developers <support@itensor.org> and contributors",
  sitename="UnspecifiedTypes.jl",
  format=Documenter.HTML(;
    canonical="https://ITensor.github.io/UnspecifiedTypes.jl",
    edit_link="main",
    assets=String[],
  ),
  pages=["Home" => "index.md"],
)

deploydocs(;
  repo="github.com/ITensor/UnspecifiedTypes.jl", devbranch="main", push_preview=true
)
