using PkgTemplates

t = Template(user="danielw2904", # my github username
             dir = pwd(), # directory of package files
             julia=v"1.5.0", # minimum julia version
             plugins=[Documenter{GitHubActions}(), # for documentation
                        GitHubActions(), # for documentation building and testing
                        Git(ssh = true, gpgsign = true) # use ssh in the git repo and sign commits with gpg key
                        ] 
)

t("CoolPkg.jl")

using DocumenterTools

# This is necessary for the Documentation to deploy to github pages
DocumenterTools.genkeys(user="danielw2904", repo="CoolPkg.jl")

# Follow instructions:
# 1. Copy first SSH key to link generated
# URL looks like:
# https://github.com/danielw2904/CoolPkg.jl/settings/keys
# Key looks like:
# ssh-rsa ................. Documenter
## -> check "Allow write access"
## Add a title e.g. "Documenter"
# 2. Copy secure environment variable to link generated 
# For github it looks like:
# https://github.com/danielw2904/CoolPkg.jl/settings/secrets
# Key are random characters
# Give it the name "DOCUMENTER_KEY"

# Once Actions have finished you will have "dev" docs. "stable" docs are added once you tag a version (either by registering in the JuliaRegistries or manually).