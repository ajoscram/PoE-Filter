# Obtains the release notes with the latest set of changes from 'changelog.md'.

source scripts/utils.sh

start="^##[[:space:]]"
end="^#\(#\)\?[[:space:]]"
cat changelog.md | extract $start $end | trim | sed "s/###/##/g"