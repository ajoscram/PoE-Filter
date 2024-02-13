# Affliction

## 3.23b
### General Changes
* Added the The Bitter Blossom card which was missing from the filter.

## 3.23
### League Changes
* Added barebones support for **Tinctures** and **Charms**.
* Added **Corpses** tiered by perfection level.
### General Changes
* Removed all alternate gem quality filtering.
* Added barebones support for transfigured gems.
* Added the new **Tainted Catalyst** currency item.
* Swapped the **Morphing Incubator** and **Amorphous Delirium Orb** for the **Challenging Incubator** and **Challenging Delirium Orb** respectively.
* Swapped all Metamorph scarabs to Ultimatum. 
* Added the new divination cards.
* Gems with quality between 0 and 5 are now shown until the `strict` filter.
* Gems with quality between 5 and 20 are now shown until the `very strict` filter.

# Trial of the Ancestors

## 3.22b
### League Changes
* Omens and tattoos are now monitored economically.
### General Changes
* Added **Fragment of the Hydra**, which was missing in the base filter.
* General economy update.

## 3.22
### League Changes
* Implemented changes to skill gem class names.
* Added the new Sanctum **Forbidden Tomes**.
* Added the new divination cards.
* Added the new **Hinekora's Lock** and **Silver Coin** currency items.
* Added the new **Tattoo** currencies. Currently the styles applied to them were guessed, but they will be pulled from PoE Ninja as soon as PFG supports them. This will also mean less desireable tattoos will eventually be hidden.
* Added the new **Omen** currencies. Currently the styles applied to them were guessed, but they will be pulled from PoE Ninja as soon as PFG supports them.

# Crucible

## 3.21b
### General Changes
* General economy update.

## 3.21
### League Changes
* Added very preliminary support for items with Crucible trees.
* Added **Igneous Geode**, **Crystalline Geode** and **Magmatic Ore** currencies.
* Added all new divination cards.
* Added **Primeval Remnant**s.
### General Changes
* Renamed **The Iron Bard** to **The Rusted Bard**.
* Removed the deprecated breachstones (charged, enriched and pure).
* Re-tiered the remaining breachstones.
* Fixed a couple of silly class name bugs patched out by GGG.

# The Forbidden Sanctum

## 3.20c
### League Changes
* Added all Lycia's invocation currencies.
* Added Voidbord Reliquary keys.
### General Changes
* General economy update.
* Added the **Disdain** divination card to the list of cards that can never be hidden.

## 3.20b
### General Changes
* **The Betrayal** divination card was brought down in value, so that it is no longer shown.
* **Ever-Changing** divination card was brought down in value, but is still always shown.
* General economy update.

## 3.20
### League Changes
* Added the new Fracturing Orb and Fracturing Shard.
* Added Relics and Sanctified Relics.
* Added the new Divination Cards.
### General Changes
* Added support for the PFG `.index` handler, which means all filters now have an index to navigate around.
* All filters are now formatted with PFG's `.format`, which should improve readibility.
* Streamlined sounds in the filter down to only 5 different ones. The intent here is to associate sound with value / rarity regardless of the item type being shown.

# Kalandra

## 3.19b
### General Changes
* All lifeforce was tiered up in value.
* Six socketed items are now hidden on the highest tier strictness since their value is diminished due to orbs of fusing being more attainable through the six link recipe.
* Scouting Reports and Eldritch currencies were shuffled in rarity due to fluctuations in price since they came out.

## 3.19
### League Changes
* Added all new Divination Cards.
* Added all new Reliquary Keys.
* Added the new Reflective Oil.
* Added the new Harvest currencies.
* Added the new Atlas memories.
* Added Mirrored Tablets.
### General Changes
* Inverted the prices of Exalted Orbs and Divine Orbs.
* Removed Convoking Wand as an Atlas-only equpment because of the new minion wand base types.
* Updated Tainted currencies to better reflect market prices.
* Removed a bug where Rogue's Marker could drop with some high currency style properties.

# Sentinel

## 3.18c
### League Changes
* Added tiers for sentinel base types. Higher strictness filters now hide less desireable sentinels.
### General Changes
* Readded the `Weapons` category on chaos recipe sub-filters. Oops!
* Maps which are hidden no longer appear on the minimap.

## 3.18b
### General Changes
* Fixed a bug with rare gear which hid rare rings and amulets on chaos recipe filters.

## 3.18
### League Changes
* Added all new divination cards.
* Added the new Sentinel currencies.
* Added all the new sentinel units. Future work will make them pretty and add tiers likely.

# Archnemesis / Siege of the Atlas

## 3.17f
### General Changes
* Added == on every string comparison which didn't need ambiguity.
* Unique flasks now have a different style, similar to unique maps.
* The six-link, six-socket and chromatic background colors were toned down a lot. They were too bright and letters were hard to read.
* Tiered delirium orbs, vials and invitations with the new `.econ` options.
* Completely re-wrote the entire filter codebase to make use of the Continue clause and the `.import` rule in PoE Filter Generator.

## 3.17e
### League Changes
* The Orb of Conflict was lowered in tier due to its market price.
### General Changes
* General economy update.

## 3.17d
### League Changes
* The Eldritch Exalted and Annulment Orbs were lowered in tier due to their market price.
### General Changes
* The Sacred Orb was tiered way too high for it's value, and has been dropped one tier.
* Fixed the Maven invitations bug which caused them to not not get caught properly.
* Added a new strictness restriction to low value currency that drops in stacks.
* More identified rares are now ignored at higher strictness values due to them being too plenty in the game: Fractured, Corrupted, Synthesized, Influenced, Temple, Lab Enchanted items and Cluster Jewels are now hidden starting from Very Strict.

## 3.17c
### League Changes
* Archnemesis mods that drop on the ground were given a different color and their drop sound was removed, since it is very similar to currency.
## General Changes
* Added The Tumbleweed divination card to the base filter.
* Bad belt bases are now filtered more strictly. Not only are they usually bad, but the amount of rare belts one can obtain this league exacerbates the issue. Heavy Belt was added to the list of bad belt bases as well.
* Regret Orbs are a lot more important now due to the Atlas changes. They are now always shown.
* Orbs of Unmaking are a lot more common now and have been brought down in tier. They are still always shown.
* Only T16 maps are shown as bright red, given the new atlas changes and how one can get their entire atlas to Tier 16. This also means that on the higher strictness only T16 maps drop.
* General economy update.

## 3.17b
### League Changes
* Fixed a bug where some Archnemesis mod currency items would be ignored in the filter.
* Lowered the tier of Orb of Unmaking since it is much more common now.

## 3.17
### League Changes
* Added all new Divination cards.
* Added the Archnemesis currency drops. Some might be missing and this will get hotfixed if necessary.
* Removed outdated currency and prophecies because they are no longer in the game.
* Removed "Common" expedition currencies as they are appearently not in the game anymore.
* Removed watchstones.
* Added the new Elderslayer fragments.
* Added the new invitations.
* Voidstones were added as a collateral of filtering for "Atlas Upgrade Item".
* Added all new Ember and Ichor currencies.
* Added the new Compass currencies.
* Added the orbs of Dominance and Conflict.
* Added the new Eldritch currecies.
* Added the Oil Extractor currency.
* Added the new Scouting Report currencies.
* Added Searing Exarch and Eater of Worlds influenced items.

# Scourge

## 3.16d
### General Changes
* Obtaining veiled crafts in the game is more srteamlined now, so non character-specific veiled items are now hidden at a lower strictness. Character specific veiled items on the other hand are now shown at a higher strictness wince you're likely to not have unveiled their crafts.
* General economy update.

## 3.16c
### League Changes
* Scourge items are bad. They're now removed from the filter at higher strictness settings.
### General Changes
* Basic jewel strictness was tightened. Jewels simply aren't as expensive anymore.
* General economy update.

## 3.16b
### League Changes
* Added Scourged items.
* Added support for basic currency stacks and splinters.

## 3.16
### League Changes
* Added all new divination cards.
* Added all new Scourge currency items.
* Removed all Perandus league items, the Hollow Pledge prophecy, the Enchanted fossil and the Encrusted fossil since they are no longer in the game.

# Expedition

## 3.15b
### League Changes
* Moved all Expedition shard currency into a single below chaos tier, except reroll currency which is still chaos tier.
### General Changes
* Removed the upper-most fossil tier. Fossils just aren't that expensive anymore.

## 3.15
### League Changes
* Added all new divination cards.
* Added all new Expedition currency items.
* Added Enkindling and Instilling orbs as chaos tier items.
* Added the new Expedition Logbook. It's appearance is equivalent to a Heist blueprint.

# Ultimatum

## 3.14f
### General Changes
* Created a Catch-all for Fragments. Further work needs to be done to ensure some testing methodology for filters that ensures all items in a base type are being caught.

## 3.14e
### General Changes
* Added the Bestiary Orb as a Chaos tier currency item.
* Given the current demand for alterations to roll Watchstones, moved the Alteration Orbs to Alchemy tier currency.
* Given how worthless they are later on in the league, moved Regret orbs to Armourer tier currency.
* Flasks with 20% quality now have a strictness of 2. Glassblowers aren't that rare and 20% flasks are a nuissance in the late game.
* Moved Tailoring and Tempering orbs to Exalt tier currency given their general cost throughout leagues.
* Moved Ritual splinters to splinters worth always picking up given their cost.
* General economy update.

## 3.14d
### General Changes
* Removed the "Horticrafting Station" BaseType since it was removed from the game.
* Magic and Normal jewels now have a strictness of 1 instead of 2. This does not apply to Cluster Jewels.
* General economy update.

## 3.14c
### General Changes
* Currency shards have been re-tiered to better reflect their value in modern PoE.
* The last visible shard tier has been given a strictness of 0.
* Identified gear no longer shows up for chaos recipe.
* General economy update.

## 3.14b
### General Changes 
* General economy update.

## 3.14
### League Changes
* Added all new Divination Cards.
* Added all 3 new Catalysts as tier 1 catalysts.
* Added all 3 new Incubators as tier 1 incubators, except the Morphing Incubator which is tier 2.
* Added all new Blight and Abyss scarabs in multiple tiers.
* Added the Veiled Chaos Orb as a chaos orb tiered item.
* Added the Tainted Oil as a tier 2 oil.
* Added the Sacred Blossom, Chronicle of Atzoatl and Inscribed Ultimatum map fragments / misc map items as a tier 2 map fragments.
* Added the Vaal Reliquary Key as a tier 1 map fragment.
* Added the Iolite Ring and Seaglass Amulet as Atlas Base drops. Other atlas only bases were ignored since they should be too plentiful to include.
### General Changes
* Attempted to fix a bug where oils were mislabeled.

# Ritual / Echoes of the Atlas

## 3.13b
### General Changes
* Fixed a bug where quest watchstones were shown as the new moddable watchstones.
* Lowered the tier of Rogue's Markers. They are simply not worth picking up from the ground as oppossed to getting them from contracts. They are now hidden starting at semi-strictness.
* General economy update.

## 3.13
### League Changes
* Added support for new moddable watchstones.
* Added all new divination cards.
* Added the Ritual and Crescent splinters.
* Added all 5 special Maven Invitations.
* Added all 8 map area invitations.
* Added all 5 Maven's Invitations and the Maven's Writ map fragments.
* Added The Maven's Orb, Orb of Unmaking, Elevated Sextant and Ritual Vessel currency items.
* Added the Bloof Filled Vessel map fragments.
* Removed the Harvest Disperser, Collectors and Seeds since they are no longer in the game. Their sections have also been removed as a result.

# Heist

## 3.12d
### General Changes
* General economy update.
* All scarabs are shown now, regardless of tier. Scarabs can always just be thrown into a map, there is no downside to picking them up.

## 3.12c
### League Changes
* Tiered Rogue Equipment so that stricter versions of the filters don't show as many of these items.
### General Changes
* General economy update.
* Lowered Silver Coins' tier down once. They're not worth picking up later on in the league.
* Fixed a bug where oils were shown rarer than they should've.
* Belts have been soft tiered. Studded, Cloth and Chain belts have been removed from the filter at Strict+ strictness.
* Normal and Magic Cluster Jewels now are hidden from Lenient+ since they are now too cheap to justify always showing.

## 3.12b
### General Changes
* General economy update.
* Changed the Equipment's base shape from Triangle to Kite.
* Chance orbs were up-tiered once for Heist contract rolling. They are still hidden in stricter filter versions.
* Moved a lot of divination cards to tier 5 (trash) for the base filter. These are simply not worth picking up anymore. Make sure a card you're interested in is not being removed by reaading through the list at the divination cards tier 5.

## 3.12
### League Changes
* Added all the new Divination Cards.
* Added the new currency items: Prime Regrading Lens, Secondary Regrading Lens, Tempering Orb, Tailoring Orb and Rogue's Marker.
* Added Heist Targets as quest items.
* Added Blueprints and Contracts in the mapping section.
* Added all Alternate Quality gems as tier 3 gems.
* Added trinkets and all Heist rouge equipment. There is no highlighting of any sort, this might be changed eventually.
### General changes
* Added +1 Flesh and Stone and Brand Recall as tier 1 gems.
* Uniques now use the new orange color for map icons and beams instead of brown. Brown is used for Heist instead.
* Added normal and rare rings and belts up to the start of act 3.
* Added 3-links up to the start of act 3.

# Harvest

## 3.11b
### General Changes
* General economy update.
* Bugfixed the upper range on divination cards still being 1c instead of 2c.

## 3.11
### League Changes
* Added the new Indigo Oil.
* Added the new divination cards on various tiers until the economy settles.
* Added the new scarabs as tier 1 drops until the economy settles.
* Added the tribute, gift and dedication to the goddess lab fragments as tier 2 fragments.
* Added both the Infused Engineer's Orb and the Facetor's Lens to the list of miscellaneous currencies as premier.
* Added all Harvest seeds and intrastructure items and displayed them as chaos orb kinda items until the economy settles.
* Added the Harbinger Scrolls as premier currencies.
### General Changes
* Made naturally hidden items the smallest possible and game them transparent backgrounds.
* Perandus coins were dropped down by one tier.
* Added an additional lower tier for catalysts. This tier is shown until the Strict version of the filter.
* Made all delirium orbs drop as premium currency instead of chaos tier. More tiers will be added as the economy settles.
* Fixed a bug where incubators did not show up.
* Removed the identified items section. Added sections for lab enchanted, Atzoatl temple modded and corrupted implicit rare items instead.
* Changed the divination card floor tier from 1c to 2c lowest price. Most 1c cards are not worth that much, and even then they're not worth selling.
* Changed the prophecy floor tier from 1c to 2c highest price, and the tier right after from 1c to 2c lowest, for the same reason the divination cards got changed.
* Change the tiering system for maps, so that maps tier >= 14 are always shown and are now top tier.
* Cluster jewels are now always shown no matter what. Abyss and regular jewels still abide by strictness.
* Added back Portal and Wisdom scrolls to the first 5 acts with strictness 0.
* Fixed a tiny bug where chromatics items in the first 5 acts had a strictness of 1 instead of 0.
* Twlight Strand gems are always shown. Intended for new players.
* Drop-only worthless gems (tier 5) now have a strictness of 1.

# Delirium

## 3.10b
### General changes
* General economy update.
* Bugfixed magic identified items appearing with a green background.

## 3.10
### 3.10 Changes
* Added support for Delirium Orbs.
* Added support for the Simulacrum fragment and splinters.
* Added Metamorph scarabs.
* Added the new divination cards.
* Added large, medium and small cluster jewels, but they are currently functionally equivalent to regular jewels and look the same.

# Metamorph / Conquerors of the Atlas 

## 3.9c
### General changes
* Split scarabs into their own section.
* Added support for unique watchstones.
* Added economy based prophecy tiers.
* General economy update on all .econ sections (see the list below).
* Fixed a bug where chromatic items would not show up in the first five acts of the game.
* Gave hidden chromatic items a smaller font.
* Added a preface, an index and links to various important resources (and ASCII ART :D).
* Implemented support for PoE Filter Generator.
### Filters folder
* PoE Generator allows for some very neat sub-filtering.
* Added .chaos rules for: Bodies, Helmets, Gloves, Boots and Weapons.
* Added .econ rules for: fragments, oils, incubator, scarabs, fossils, divination cards and prophecies.
* Added .strict rules where:
    * 0: Shows everything.
    * 1: Hides start of the league currency in [0101].
    * 2: Hides currency that becomes obsolete once quota is met, non-rare atlas bases and non-rare identified items.
    * 3: Hides worthless currency, white maps, magic jewels and all basic rares except jewellry.
    * 4: Hides yellow maps, rare jewels, rare jewellry, ID'ed rares and veiled rares.
    * 5: Hides all red maps except T16s.

## 3.9b
### League Changes
* Support for "Atlas Region Upgrade Item" (Watchstones) was added.
* Support for new influenced types was added and it was streamlined into a single section alongside Shaper and Elder influence.
### General changes
* Fixed the letter color on incubators from grey to black.
* Added Atlas-only base types to the Normal & Magic sections of gear to show them when they have those rarities.

## 3.9
### League Changes
* Updated the maps section in general for 3.9.
* Added all divination cards tiered.
* Changed the old sextant names for the new ones.
* Added catalysts.
* Added the new Exalted Orbs.
* Added the new fragments.
* Added Awakened gems.
### General changes
* Chromatic items are now shown until the end of act 5.
* 5-links are now always shown up to end-game before maps instead of up to act 5.
* Changed tier 2 currency shards' sound to better match their cost.
* Jeweller's Orb and Perandus Coins were upped one tier.
* Added blighted maps (somehow missed this on 3.8 lol).
* Added an extra splinter tier to hide the worthless ones later on in the league.
* Now atlas-only bases are shown for all items instead of just jewellery. They can be hidden later on in the league if not on SSF.
* The divination cards section was refactored with less tiers to make it easier to maintain.
* Some divination cards that were missing were added.
* Streamlined the fossils, resonators, incubators, oils and incursion vials sections into the normal currency colors to make them more maintainable and readable in game. Future league sub-currencies should follow this trend as well; barring exceptions like splinters.