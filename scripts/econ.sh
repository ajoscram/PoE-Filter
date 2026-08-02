# Runs PFG with .econ on every filter file that contains that text in the 'src' directory.

set -eo pipefail

grep --include='*.filter' -rwl 'src/' -e '.econ' | while read file; do
    pfg.exe "$file" .econ
done