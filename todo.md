# Official docs
https://www.pathofexile.com/item-filter/about
https://www.poewiki.net/wiki/Body_armour
https://www.craftofexile.com/?b=45&ob=both&v=d&a=e&l=a&lg=11&bp=y&as=1&hb=0&bld={}&im={}&ggt=|&ccp={}
https://www.filterblade.xyz/
https://github.com/ajoscram/PoE-Filter/tree/28ffa9f0f5821540138253391b051a9724a01cdb/src/conditions/gear

# conditions
bases
    heist
    atlas
    ritual
    good bases

item level
    black border = below iLvl 60
    yellow border = chaos recipe
    blue border = regal recipe
    white border = all mods can be crafted on this item

mods
    t1 mod(s) on uncorrupted magic items 
    mod tiers
    corrupted implicits
    eldritch

quality

defence percentile (maybe ignore this)

corrupted
    scourged
    number of implicit mods

"influence"
    conqueror, shaper, elder
    synthesized
    fractured
    veiled

unique
    replica
    double corrupted uniques
    double+ abyss socket unique

# styles available
SetBackgroundColor -> used for chromatic / six socket / six link
SetBorderColor -> used for item level
SetTextColor -> used for rarity (poe standard)

PlayEffect (beam)
MinimapIcon
PlayAlertSound

# To-Do
* Reorganize gems with the Trasfigured Gems changes.
* Figure out a re-organization of the "mapping" filter section.
* Support 5+ mods abyss jewels.
* Add support for HasInfluence on maps.
* Add support for the EnchantmentPassiveNode and EnchantmentPassiveNum cluster jewel conditions.
* Fix six sockets on minimap bug.
* Add currency shard stack size filtering.
* Group gear by class and tier base types.
* The Sacred Blossom and Blood-filled veessels are  not supported in fragments for some reason.
* Add Pieces (Harbinger and Ultimatum map) to unique tiering.
* Implement stacks filtering for currency shards.
* Add support for the Ritual base types, which are usually expensive.
* Add unique filtering by base type.
* Add support for base defences (BaseDefencePercentile).
* Expand the Influenced base types section with the best bases/levels per influence.
* Add beasts section.
* Add a wiki page for this project.
* Do a pass of existing tiered items on the base filter for league-start.