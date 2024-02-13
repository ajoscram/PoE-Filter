source scripts/utils.sh

pattern="^##[[:space:]]"
cat changelog.md | extract $pattern $pattern | trim | sed "s/###/##/g"