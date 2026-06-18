source scripts/utils.sh
source .env

DOT_STAND_IN="%"
VERSION=$(scripts/version.sh | sed "s/\./\\$DOT_STAND_IN/")
ECON=".econ" && contains "leaguestart" $@ && ECON=""

get_styles | while read style; do

    title_style=${$style^}
    pfg.exe "src/_main.filter" "$OUTPUT" .import STYLE=styles \> $style || exit

    get_strictness_values | while read strictness number; do

        title_strictness=${strictness^}
        pfg.exe "$OUTPUT" "build/$title_style/$title_strictness.filter" \
            .alias VERSION=$VERSION, STYLE=$title_style, VARIANT=$title_strictness .index \
            .alias $DOT_STAND_IN=. .strict $number .if $ECON .multi .format || exit

    done
done

rm "$OUTPUT"