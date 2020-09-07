using PkgTemplates

t = Template(user="danielw2904", # my github username
             dir = pwd(), # directory of package files
             julia=v"1.5.0", # minimum julia version
             plugins=[Documenter{GitHubActions}(), GitHubActions()], # for documentation and testing
)

t("CoolPkg.jl")

using DocumenterTools

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

