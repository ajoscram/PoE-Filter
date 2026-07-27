# Obtains the current version tag from 'changelog.md'.

source scripts/utils.sh

pattern="^##[[:space:]]*"
cat changelog.md | line $pattern | sed "s/$pattern//"