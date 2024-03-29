source scripts/utils.sh
source .env

econ=".econ" && contains "leaguestart" $@ && econ=""
watch=":watch" && ! contains "dev" $@ && watch=""
pfg.exe $watch "src/_main.filter" "$OUTPUT" .import .index .choose $econ || exit
contains "dev" $@ && exit

strictness_types=(Base Lenient Semi-strict Strict Very-strict Uber-strict)
chaos_types=(Bodies Helmets Gloves Boots Weapons Nothing)
[ ! -d "build" ] && mkdir "build"

for strictness_value in "${!strictness_types[@]}"
do
    strictness="${strictness_types[$strictness_value]}"
    pfg.exe "$OUTPUT" "build/$strictness.filter" .strict $strictness_value || exit
    [ ! -d "build/chaos/$strictness" ] && mkdir -p "build/chaos/$strictness"

    for chaos_type in "${chaos_types[@]}"
    do
        pfg.exe \
            "build/$strictness.filter" \
            "build/chaos/$strictness/$chaos_type.filter" \
            .tag chaos $chaos_type .format \
            || exit
    done

    pfg.exe "build/$strictness.filter" .format || exit
done

rm "$OUTPUT"