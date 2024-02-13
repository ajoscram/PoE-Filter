[ ! -d "release" ] && mkdir "release"
cp "build/Base.filter" "release/Ajos.filter"

# Requires powershell
powershell "Compress-Archive -Path build/* -DestinationPath release/Subfilters.zip"