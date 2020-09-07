# CoolPkg

[See newpkg.jl for package generation](newpkg.jl)

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://danielw2904.github.io/CoolPkg.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://danielw2904.github.io/CoolPkg.jl/dev)
[![Build Status](https://github.com/danielw2904/CoolPkg.jl/workflows/CI/badge.svg)](https://github.com/danielw2904/CoolPkg.jl/actions)

Default git config:

```
> cat .git/config 
[core]
        bare = false
        repositoryformatversion = 0
        filemode = true
        logallrefupdates = true
[remote "origin"]
        url = https://github.com/danielw2904/CoolPkg.jl
        fetch = +refs/heads/*:refs/remotes/origin/*
        fetch = refs/heads/master
        push = refs/heads/master
```

For Documentation see [documentation page](https://danielw2904.github.io/CoolPkg.jl/dev/) and [docstring](https://github.com/danielw2904/CoolPkg.jl/blob/755590274fb62133d9e39ef232c69280f797dc94/src/CoolPkg.jl#LL5-L12).