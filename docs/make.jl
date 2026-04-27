using Documenter: Documenter, DocMeta, deploydocs, makedocs
using ITensorFormatter: ITensorFormatter
using UnspecifiedTypes: UnspecifiedTypes

DocMeta.setdocmeta!(
    UnspecifiedTypes, :DocTestSetup, :(using UnspecifiedTypes); recursive = true
)

ITensorFormatter.make_index!(pkgdir(UnspecifiedTypes))

makedocs(;
    modules = [UnspecifiedTypes],
    authors = "ITensor developers <support@itensor.org> and contributors",
    sitename = "UnspecifiedTypes.jl",
    format = Documenter.HTML(;
        canonical = "https://itensor.github.io/UnspecifiedTypes.jl",
        edit_link = "main",
        assets = ["assets/favicon.ico", "assets/extras.css"]
    ),
    pages = ["Home" => "index.md", "Reference" => "reference.md"]
)

deploydocs(;
    repo = "github.com/ITensor/UnspecifiedTypes.jl", devbranch = "main", push_preview = true
)
