using CoolPkg
using Documenter

makedocs(;
    modules=[CoolPkg],
    authors="Daniel Winkler <danielw2904@disroot.org> and contributors",
    repo="https://github.com/danielw2904/CoolPkg.jl/blob/{commit}{path}#L{line}",
    sitename="CoolPkg.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://danielw2904.github.io/CoolPkg.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/danielw2904/CoolPkg.jl",
)
